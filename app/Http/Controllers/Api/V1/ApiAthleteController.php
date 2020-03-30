<?php namespace App\Http\Controllers\Api\V1;


use App\Http\Datautil\Util;
use App\Http\Requests\UserRequest;
use App\Mail\Restore;
use App\Models\School;
use App\Models\User;
use Cartalyst\Sentinel\Checkpoints\NotActivatedException;
use Cartalyst\Sentinel\Checkpoints\ThrottlingException;
use Cartalyst\Sentinel\Laravel\Facades\Activation;
use Mail;
use Reminder;
use Sentinel;
use stdClass;
use URL;
use Validator;
use View;
use App\Http\Controllers\Controller;
use Response;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use DB;
use File;
use Illuminate\Support\Facades\Input;
use PayPal\Api\Payout;
use PayPal\Api\Currency;
use PayPal\Api\PayoutBatchHeader;
use PayPal\Api\PayoutSenderBatchHeader;
use PayPal\Api\PayoutItem;
use PayPal\Rest\ApiContext;
use PayPal\Auth\OAuthTokenCredential;

class ApiAthleteController extends Controller
{

    public function index(Request $request)
    {
        $status = $request->get('status');
        $school_id = $request->get('school_id');

        $ret = array();
        // if(!$school_id) {
        //     $ret['code']    = '401';
        //     $ret['msg']     = 'Please select school name.';
        //     return Response::json($ret);
        // }

        $athletes = \DB::table('users as u')
            ->leftJoin('school_user as sc', 'u.id', '=', 'sc.user_id')
            ->leftJoin('schools as sch', 'sc.school_id', '=', 'sch.id')
            ->leftJoin('role_users as rou', 'rou.user_id', '=', 'u.id')
            ->leftJoin('roles as ros', 'rou.role_id', '=', 'ros.id')
            ->select(['u.*','sc.school_id','sch.name as school_name','rou.role_id as role_id','ros.name as role_name'])
            ->where('rou.role_id', '=', 5);
        if($status != '5')
            $athletes = $athletes->where('u.status', $status);

        $athletes   = $athletes->orderby('u.created_at', 'desc')
            ->get();

        return Response::json($athletes);
    }

    //create athlete
    public function createAthlete(Request $request) {
        $data = new stdClass();
        $ret = array();

        if ($file = $request->file('pic_file')) {
            $extension = $file->extension()?: 'png';
            $destinationPath = public_path() . '/uploads/users/';
            $safeName = str_random(10) . '.' . $extension;
            $file->move($destinationPath, $safeName);
            $request['pic'] = '/uploads/users/'.$safeName;
        }

        $role_id    = '5'; //personal trainer
        $state = $request->get('state');
        if($state)
            $request['state'] = Util::getStateName($state);
        $region = $request->get('region');
        if($region)
            $request['region'] = Util::getRegionName($region);
        $province = $request->get('province');
        if($province)
            $request['province'] = Util::getProvinceName($province);

        //check whether use should be activated by default or not
        $activate = $request->get('activate') ? true : false;

        $email    = $request->get('email');
        $password = $request->get('password');
        if(!$password) {
            $password = '123456';
        }
        $request['password'] = $password; //defualt password
        $verify_code = base64_encode($password.":".$email);
        $request['verify_code'] = $verify_code;

        DB::beginTransaction();
        try {
            if(!$request->get('email')) {
                $ret['code']    = '401';
                $ret['msg']     = 'All items can not register. Please check email.';
                return Response::json($ret);
            }

            $email_confirm = DB::table('users')->where('email', $request->get('email'))-> first();
            if($email_confirm) {
                $ret['code']    = '402';
                $ret['msg']     = 'Email registered already. Please check email.';
                return Response::json($ret);
            }

            // Register the user
            $req = $request->except( 'password_confirm', 'group', 'activate', 'pic_file','school_id', 'user_upload', 'user_download','lati','longi');
            $user = Sentinel::register( $req , $activate);

            //add user to 'User' group
            $role = Sentinel::findRoleById('5');//$request->get('group') for technical person
            if ($role) {
                $role->users()->attach($user);
            }

            //upload and download
            if($user) {
                $user_uploads  = $request->file('user_upload');
                if($user_uploads) {
                    foreach ($user_uploads as $file) {
                        if ($file) {
                            $type       = $file->extension()?: 'png';
                            $size       = $file->getSize();
                            $destinationPath = public_path() . '/uploads/users/';
                            $safeName = str_random(10) . '.' . $type;
                            $file->move($destinationPath, $safeName);
                            $path = '/uploads/users/'.$safeName;
                            $user_upload = \DB::insert('insert into user_upload (user_id, type, url, size)
                                                                    values (?,?,?,?)', [$user->id, $type, $path, $size]);
                        }
                    }
                }

                $user_downloads  = $request->file('user_download');
                if($user_downloads) {
                    foreach ($user_downloads as $file) {
                        if ($file) {
                            $type       = $file->extension()?: 'png';
                            $size       = $file->getSize();
                            $destinationPath = public_path() . '/uploads/users/';
                            $safeName = str_random(10) . '.' . $type;
                            $file->move($destinationPath, $safeName);
                            $path = '/uploads/users/'.$safeName;
                            $user_download = \DB::insert('insert into user_download (user_id, type, url, size)
                                                                    values (?,?,?,?)', [$user->id, $type, $path, $size]);
                        }
                    }
                }
            }else {
                DB::rollBack();
                $ret['code']    = '403';
                $ret['msg']     = 'Can not register. Please check all items.';
                return Response::json($ret);
            }
            //check for activation and send activation mail if not activated by default
            if (!$request->get('activate')) {
                // Data to be used on the email view
                $data->user_name = $user->first_name .' '. $user->last_name;
                $data->activationUrl = URL::route('activate', [$user->id, Activation::create($user)->code]);

                // Send the activation code through email
                //Mail::to($user->email)
                //    ->send(new Restore($data));
            }

            // Redirect to the home page with success menu
            DB::commit();
        } catch (LoginRequiredException $e) {
            DB::rollBack();
            $ret['code']    = '403';
            $ret['msg']     = 'Can not register. Please check all items.';
            return Response::json($ret);
        } catch (PasswordRequiredException $e) {
            DB::rollBack();
            $ret['code']    = '403';
            $ret['msg']     = 'Can not register. Please check all items.';
            return Response::json($ret);
        } catch (UserExistsException $e) {
            DB::rollBack();
            $ret['code']    = '403';
            $ret['msg']     = 'Can not register. Please check all items.';
            return Response::json($ret);
        }

        //send
        $data = array();
        $customer = \DB::table('mail_templates')->where('mailname', 'to_athlete_verify')->first();
        $domain = \Request::root();
        $verify = $password.":".$email;
        $verify = $domain.'/auth/verify/'.base64_encode($verify);

        if(!empty($customer)){
            $subject     = $customer->subject;
            $content     = $customer->content;
            $fromname    = $customer->sender;
            $user_name = $user->last_name.' '.$user->first_name;
            $content = str_replace('{user_name}', $user_name, $content);
            $content = str_replace('{verify}', $verify, $content);
            $content = str_replace('{domain}', $domain, $content);
            $mail_addresses = [
                $user->email, // guest email
            ];

            foreach ($mail_addresses as $address){
                $data1 = array('content' => $content, 'subject' => $subject, 'fromname' => $fromname, 'email' => $address);
                $data[] = $data1;
            }
        }

        $finaldata = array('data' => json_encode($data, JSON_UNESCAPED_UNICODE));

        if($user) {
            try {
                $ch = array();
                $mh = curl_multi_init();
                $ch[0] = curl_init();

                $base_url = url('/');
                curl_setopt($ch[0], CURLOPT_URL, $base_url."/mail/school/schoolmail.php");
                curl_setopt($ch[0], CURLOPT_HEADER, 0);
                curl_setopt($ch[0], CURLOPT_POST, true);
                curl_setopt($ch[0], CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch[0], CURLOPT_FOLLOWLOCATION, true);
//               curl_setopt($ch[0], CURLOPT_CAINFO, '/etc/httpd/conf/server.pem');
//               curl_setopt($ch[0], CURLOPT_USERPWD, 'motocle:m123');
                curl_setopt($ch[0], CURLOPT_POST, true);
                curl_setopt($ch[0], CURLOPT_POSTFIELDS, $finaldata);
                curl_setopt($ch[0], CURLOPT_SSL_VERIFYPEER, 0);
                curl_multi_add_handle($mh, $ch[0]);
                $active = null;
                do {
                    $mrc = curl_multi_exec($mh, $active);
                } while ($mrc == CURLM_CALL_MULTI_PERFORM);

                while ($active && $mrc == CURLM_OK) {
                    // add this line
                    while (curl_multi_exec($mh, $active) === CURLM_CALL_MULTI_PERFORM) ;

                    if (curl_multi_select($mh) != -1) {
                        do {
                            $mrc = curl_multi_exec($mh, $active);
                            if ($mrc == CURLM_OK) {
                            }
                        } while ($mrc == CURLM_CALL_MULTI_PERFORM);
                    }
                }
                //close the handles
                curl_multi_remove_handle($mh, $ch[0]);
                curl_multi_close($mh);
            } catch (Exception $e) {
            }
        }

        // Redirect to the user creation page
        $ret['code']    = '200';
        $ret['msg']     = 'Completed Successfully.';
        return Response::json($ret);
    }
    //
    public function updateAthlete($user_id, Request $request) {
        $ret = array();
        //echo json_encode($request->all()); return;
        $user = Sentinel::findUserById($user_id);
        $data = new stdClass();
        DB::beginTransaction();
        try {
            $user->update($request->except('user_id','token','pic_file','email','school_id','password','password_confirm','groups',
                'activate','user_upload', 'user_download'));

            if ($password = $request->has('password')) {
                $user->password = Hash::make($request->password);
            }
            // is new image for user uploaded?
            if ($file = $request->file('pic_file')) {
                $extension = $file->extension()?: 'png';
                $destinationPath = public_path() . '/uploads/users/';
                $safeName = str_random(10) . '.' . $extension;
                $file->move($destinationPath, $safeName);
                //delete old pic if exists
                if (File::exists(public_path() . $user->pic)) {
                    File::delete(public_path() . $user->pic);
                }
                //save new file path into db
                $user->pic = '/uploads/users/'.$safeName;
            }

            $state              = $request->get('state');
            if($state)
                $user->state        = Util::getStateName($state);
            $region             = $request->get('region');
            if($region)
                $user->region       = Util::getRegionName($region);
            $province           = $request->get('province');
            if($province)
                $user->province     = Util::getProvinceName($province);

            //save record
            $user->save();
            if($user) {
                $user_uploads  = $request->file('user_upload');
                if($user_uploads) {
                    foreach ($user_uploads as $file) {
                        if ($file) {
                            $type       = $file->extension()?: 'png';
                            $size       = $file->getSize();
                            $destinationPath = public_path() . '/uploads/users/';
                            $safeName = str_random(10) . '.' . $type;
                            $file->move($destinationPath, $safeName);
                            $path = '/uploads/users/'.$safeName;
                            $user_upload = \DB::insert('insert into user_upload (user_id, type, url, size)
                                                                    values (?,?,?,?)', [$user->id, $type, $path, $size]);
                        }
                    }
                }

                $user_downloads  = $request->file('user_download');
                if($user_downloads) {
                    foreach ($user_downloads as $file) {
                        if ($file) {
                            $type       = $file->extension()?: 'png';
                            $size       = $file->getSize();
                            $destinationPath = public_path() . '/uploads/users/';
                            $safeName = str_random(10) . '.' . $type;
                            $file->move($destinationPath, $safeName);
                            $path = '/uploads/users/'.$safeName;
                            $user_download = \DB::insert('insert into user_download (user_id, type, url, size)
                                                                    values (?,?,?,?)', [$user->id, $type, $path, $size]);
                        }
                    }
                }
            }
            // Get the current user groups
            $userRoles = $user->roles()->pluck('id')->all();

            // Get the selected groups

            $selectedRoles = ['5']; // $request->get('groups'); 3 is technical manager

            // Groups comparison between the groups the user currently
            // have and the groups the user wish to have.
            if($userRoles) {
                $rolesToAdd = array_diff($selectedRoles, $userRoles);
                $rolesToRemove = array_diff($userRoles, $selectedRoles);

                // Assign the user to groups

                foreach ($rolesToAdd as $roleId) {
                    $role = Sentinel::findRoleById($roleId);
                    $role->users()->attach($user);
                }

                // Remove the user from groups
                foreach ($rolesToRemove as $roleId) {
                    $role = Sentinel::findRoleById($roleId);
                    $role->users()->detach($user);
                }
            }
            // Activate / De-activate user

            $status = $activation = Activation::completed($user);

            if ($request->get('activate') != $status) {
                if ($request->get('activate')) {
                    $activation = Activation::exists($user);
                    if ($activation) {
                        Activation::complete($user, $activation->code);
                    }
                } else {
                    //remove existing activation record
                    Activation::remove($user);
                    //add new record
                    Activation::create($user);
                    //send activation mail
                    $data->user_name =$user->first_name .' '. $user->last_name;
                    $data->activationUrl = URL::route('activate', [$user->id, Activation::exists($user)->code]);
                    // Send the activation code through email
//                    Mail::to($user->email)
//                        ->send(new Restore($data));

                }
            }

            $school_id  = $request->get('school_id');
            if($school_id) {
                //$school = School::find($school_id);
                $role_id = 5 ;
                $shcool_user_check = \DB::table('school_user')
                    ->where('school_id', $school_id)
                    ->where('role_id', $role_id)
                    ->where('user_id', $user->id)
                    ->first();
                if(!$shcool_user_check)
                    $school_user = \DB::insert('insert into school_user (school_id, user_id, role_id) values (?, ?, ?)', [$school_id, $user->id, $role_id]);
            }
            // Was the user updated?
            if ($user->save()) {
                DB::commit();
                $ret['code']    = 200;
                $ret['msg']     = "Completed Successfully";
                return Response::json($ret);
            }
            DB::rollBack();
            // Prepare the error message
            $error = 'Can not completed. Please check all items.';
        } catch (UserNotFoundException $e) {
            DB::rollBack();
            // Prepare the error message
            $error = 'Can not found user' ;
        } catch(QueryException $e) {
            $error = 'SqlException error.' ;
        }

        DB::rollBack();
        $ret['code']    = 401;
        $ret['msg']     = $error;
        return Response::json($ret);
    }

    public function showAthlete($id, Request $request) {

        $athlete = Sentinel::findUserById($id);
        if($athlete) {
            $athlete->state_id  = Util::getStateId($athlete->state);
            $athlete->region_id = Util::getRegionId($athlete->region);
            $athlete->province_id = Util::getProvinceId($athlete->province);
            $athlete->country = 'Italy';
            $user_upload  = DB::table('user_upload')->where('user_id', $id)->get();
            $user_download = DB::table('user_download')->where('user_id', $id)->get();

            $athlete->upload     = $user_upload;
            $athlete->download   = $user_download;
        }

        // Show the page
        $ret = array();
        $ret['personal']= $athlete;
        return Response::json($ret);
    }

    public function confirmVerify(Request $request) {
        $verify_value   = $request->get('verify_value');
        //$verify_value   = "MTIzNDU2Nzg5OmZ1dHVyZS5zeWcxMTE4QGdtYWlsLmNvbQ==";
        $verify_value   = base64_decode($verify_value);
        $verifys        = explode(":", $verify_value);
        $password       = $verifys[0];
        $email          = $verifys[1];
        $user           = User::where('email', $email)->first();
        $ret = array();
        $request['email']       = $email;
        $request['password']    = $password;
        try {
            // Try to log the user in
            if (Sentinel::authenticate($request->only(['email', 'password']), $request->get('remember-me', false))) {
                //get token and update
                $user = \DB::table('users')->where('id',$user->id)->update(['status'=>'3']); //approved
                $ret['code']    = '200';
                $ret['msg']     = 'This user registered scucessfully.';
                return Response::json($ret);
            }
            $ret['msg'] = 'Can not confirm your account. Please register again.';
        } catch (NotActivatedException $e) {
            $ret['msg'] = 'Can not confirm your account. Please register again.';
        } catch (ThrottlingException $e) {
            $ret['msg'] = 'Can not confirm your account. Please register again.';
        }
        $ret['code']    = '400';
        return Response::json($ret);
    }

    public function reservationSchoolCourse(Request $request) {
        $school_course_id = $request->get('school_course_id'); 
        $user_id = $request->get('user_id'); 
        
        $reserve = \DB::table('school_course_reservation as sr')
        ->where('sr.school_course_id', $school_course_id)
        ->where('sr.user_id', $user_id)
        ->select(['sr.*'])
        ->first();

        if( $reserve )
        {
            $ret['code']    = '401';
            $ret['msg']     = 'You have already sent reservation.';
            return Response::json($ret);
        }
        
        $school_course = \DB::table('school_course')->where('id', $school_course_id)->first(); 
        
        // return Response::json($school_course);

        $ret = array();
        if($school_course) {
            $request['course_id']   = $school_course->course_id;
            $request['level_id']    = $school_course->level_id;                          
            if ($file = $request->file('request_file')) {
                $extension = $file->extension()?: 'png';
                $destinationPath = public_path() . '/uploads/courses/reservation';
                $safeName = str_random(10) . '.' . $extension;
                $file->move($destinationPath, $safeName);
                $request['athlete_file'] = '/uploads/courses/reservation'.$safeName;
            }
            $req = $request->except('token', 'role', 'request_file') ;
            $reservation = \DB::table('school_course_reservation')
                                ->insert($req);
            if($reservation) {            
                $ret['code']    = '200';
                $ret['msg']     = 'Your request has been sent to the management team correctly. Please wait until approved';                    
            }else{
                $ret['code']    = '400';
                $ret['msg']     = 'Can not reservation. Please retry.';                    
            }
        }else {
            $ret['code']    = '401';
            $ret['msg']     = 'Can not reservation. there is no course registered.';                    
        }

        return Response::json($ret);
    }

    public function reviewSchoolCourse(Request $request) {

        $review     = $request->get('review', '');
        $score      = $request->get('score', 0);
        $course_id  = $request->get('course_id',0);
        $level_id   = $request->get('level_id',0);
        $school_course_id = $request->get('school_course_id', 0);
        $from_id = $request->get('from_id', 0);
        $to_id = $request->get('to_id', 0);

        $select_review = \DB::table('school_course_date_review')
            ->where('course_id', $course_id)
            ->where('level_id', $level_id)
            ->where('school_course_id', $school_course_id)
            ->where('from_id', $from_id)
            ->where('to_id', $to_id)
            ->first();
        $pass = false;
        if($select_review) {
            $update_review = \DB::table('school_course_date_review')
                ->where('course_id', $course_id)
                ->where('level_id', $level_id)
                ->where('school_course_id', $school_course_id)
                ->where('from_id', $from_id)
                ->where('to_id', $to_id)
                ->update(['review' => $review,'score' => $score]);
            $pass = true;
        }
        else {
            $insert_review = \DB::table('school_course_date_review')
                ->insert(['course_id' => $course_id,
                    'level_id' => $level_id,
                    'school_course_id' => $school_course_id,
                    'from_id' => $from_id,
                    'to_id' => $to_id,
                    'review' => $review,
                    'score' => $score]);
            if($insert_review) $pass = true;
        }
        if ($pass) {
            $ret['code']    = "200";
            $ret['msg']     = "Completed Successfully.";
        }
        else{
            $ret['code']    = "401";
            $ret['msg']     = "Invalid parameters.";
        }

        return Response::json($ret);
    }

    // getReserveCourseList;
    public function getReserveCourseList(Request $request) {
        $athlete_id = $request->get('user_id', 0);
        $attends = \DB::table('school_course_reservation as sr')
        ->leftJoin('school_course as sc', 'sr.school_course_id', '=', 'sc.id')
        ->leftJoin('users as ur', 'ur.id', '=', 'sc.trainer_id')
        ->leftJoin('course_level as cl', 'cl.id', '=', 'sc.level_id')
        ->where('sr.user_id', $athlete_id)
        ->get(['sc.*','ur.first_name as tf_name','ur.last_name as tl_name',
         'ur.pic as tpic', 'cl.level_name as lname', 'sr.status as rstatus',
         'sr.user_id as uid','sr.id as rid']);

         return Response::json($attends);
    }
    
    public function getSummaryAttendList(Request $request)
    {
        $course_id = $request->get('course_id', 0);
        $trainer_id = $request->get('trainer_id', 0);
        $athlete_id = $request->get('user_id','0');

        $course_date = \DB::table('school_course_date as scr')
            ->where('scr.school_course_id', $course_id)
            ->select(['scr.*'])
            ->get();
        
        if( $athlete_id != 0)
        {
            $attendance = \DB::table('school_course_date_attend as scr')
            ->leftJoin('users as ur', 'ur.id', '=', 'scr.athlete_id')
            ->leftJoin('users as tr', 'tr.id', '=', 'scr.trainer_id')
            ->where('scr.school_course_id', $course_id)
            ->where('scr.athlete_id', $athlete_id)
            ->select(['scr.*', 'ur.first_name as fname', 'ur.last_name as lname', 'ur.pic as pic',
            'tr.pic as tpic', 'tr.first_name as tfname', 'tr.last_name as tlname'])
            ->get();
        }
        else{
            $attendance = \DB::table('school_course_date_attend as scr')
            ->leftJoin('users as ur', 'ur.id', '=', 'scr.athlete_id')
            ->leftJoin('users as tr', 'tr.id', '=', 'scr.trainer_id')
            ->where('scr.school_course_id', $course_id)
            ->select(['scr.*', 'ur.first_name as fname', 'ur.last_name as lname', 'ur.pic as pic',
            'tr.pic as tpic', 'tr.first_name as tfname', 'tr.last_name as tlname'])
            ->get();   
        }
        $ret = array();
        foreach ($attendance as $rec_attend) {
            $arr = array();
            $arr['attend_id'] = $rec_attend->id;
            $arr['athlete_id'] = $rec_attend->athlete_id;
            $date_attend = json_decode($rec_attend->attend);

            $athlete_review = \DB::table('school_course_date_review')
                              ->where('school_course_id', $course_id)
                              ->where('from_id', $trainer_id)
                              ->where('to_id', $athlete_id)
                              ->first();

            $trainer_review = \DB::table('school_course_date_review')
                              ->where('school_course_id', $course_id)
                              ->where('from_id', $athlete_id)
                              ->where('to_id', $trainer_id)
                              ->first();

            $total_day = 0;
            $present_day = 0;
            $absent_day = 0;
            $late_day = 0;

            foreach ($course_date as $rec_course) {
                $date_id = $rec_course->id;
                $found = false;
                $szAttend = '';
                foreach($date_attend as $row) {
                    foreach($row as $key => $val) {
                        if( $date_id == $key )
                        {
                            $szAttend = $val;
                            $found = true;
                            break;
                        }
                    }
                    if( $found )
                        break;
                }

                if( !$found ) $szAttend = '0';

                if( $szAttend == '0')
                    $absent_day++;
                else if( $szAttend == '1')
                    $present_day++;
                else if( $szAttend == '2')
                    $late_day++;

                $total_day++;
            }

            $arr['first_name'] = $rec_attend->fname;
            $arr['last_name'] = $rec_attend->lname;
            $arr['pic'] = $rec_attend->pic;
            $arr['total'] = $total_day;
            $arr['present'] = $present_day;
            $arr['absent'] = $absent_day;
            $arr['late'] = $late_day;
            
            $arr['tpic'] = $rec_attend->tpic;
            $arr['tfname'] = $rec_attend->tfname;
            $arr['tlname'] = $rec_attend->tlname;

            if($athlete_review) {
                $arr['review'] = $athlete_review->review;
                $arr['score'] = $athlete_review->score;
            }else {
                $arr['review'] = '';
                $arr['score'] = '';
            }

            if($trainer_review) {
                $arr['treview'] = $trainer_review->review;
                $arr['tscore'] = $trainer_review->score;
            }else {
                $arr['treview'] = '';
                $arr['tscore'] = '';
            }
            array_push($ret, $arr);
        }

        return Response::json($ret);
    }

    public function giveFeedbackToTrainer($attend_id, Request $request)
    {
        $review = $request->get('review', '');
        $score = $request->get('score', '0');

        $course_date = \DB::table('school_course_date_attend')
                                ->where('id', $attend_id)->first();

        $course_id  = $course_date->course_id;
        $level_id   = $course_date->level_id;
        $school_course_id = $course_date->school_course_id;
        $from_id    = $request->get('user_id');
        $to_id      = $course_date->trainer_id;

        $select_review = \DB::table('school_course_date_review')
                                ->where('course_id', $course_id)
                                ->where('level_id', $level_id)
                                ->where('school_course_id', $school_course_id)
                                ->where('from_id', $from_id)
                                ->where('to_id', $to_id)
                                ->first();
        $pass = false;
        if($select_review) {
            $update_review = \DB::table('school_course_date_review')
                ->where('course_id', $course_id)
                ->where('level_id', $level_id)
                ->where('school_course_id', $school_course_id)
                ->where('from_id', $from_id)
                ->where('to_id', $to_id)
                ->update(['review' => $review, 'score' => $score]);
            $pass = true;
        }
        else {
            $insert_review = \DB::table('school_course_date_review')
                ->insert(['course_id' => $course_id,
                    'level_id' => $level_id,
                    'school_course_id' => $school_course_id,
                    'from_id' => $from_id,
                    'to_id' => $to_id,
                    'review' => $review,
                    'score' => $score]);
            if($insert_review) $pass = true;
        }
        if ($pass) {
            $ret['code']    = "200";
            $ret['msg']     = "Completed Successfully.";
        }
        else{
            $ret['code']    = "401";
            $ret['msg']     = "Invalid parameters.";
        }

        return Response::json($ret);
    }

    public function schoolCoursePay(Request $request) {
        $reservation_id = $request->get('reservation_id');
        $reserve = \DB::table('school_course_reservation')
                        ->where('id', $reservation_id)        
                        ->update(['status' => '1']);
        //save history

        $ret = array();
        $ret['code']    = "200";
        $ret['msg']     = "Completed Successfully.";
        return Response::josn();
    }

    public function payHistory(Request $request)
    {
        $user_id    = $request->get('user_id');
        $package_id = 0;
        $pay_amount = $request->get('pay_amount');
        $pay_currency = $request->get('currency');
        $details    = $request->get('details');
        $reservation_id = $request->get('reservation_id');        
        $details_arr = $details;
        $intent     = $details_arr['intent'];
        $order_id   = $details_arr['id'];
        $purchase_unit = json_encode($details_arr['purchase_units']);
        $payer      =  $details_arr['payer'];
        $payer_id   = $payer['payer_id'];
        $email_address = $payer['email_address'];
             

        $history = \DB::table('school_pay_history')
            ->insert([
                'package_id'    => $package_id,
                'user_id'       => $user_id,
                'pay_amount'    => $pay_amount,
                'pay_currency'  => $pay_currency,
                'order_id'      => $order_id,
                'payer_id'      => $payer_id,
                'email_address' => $email_address,
                'intent'        => $intent,
                'purchase_units' => $purchase_unit
            ]);
          
        $school_payment_rate = 10;
        $school_pay_amount = round($pay_amount/100 * $school_payment_rate); 
        $school = \DB::table('school_course_reservation as sr')
                        ->leftJoin('school_course as sc', 'sc.id', '=', 'sr.school_course_id')
                        ->where('sr.id', $reservation_id)
                        ->select(['sc.school_id'])
                        ->get();          
        $school_id = $school[0]->school_id;
        $school_user = \DB::table('school_user as su')
                        ->leftJoin('school_pay_history as sph', 'sph.user_id', '=', 'su.user_id')
                        ->Where('su.school_id', $school_id)
                        ->where('su.role_id', 2) //role = 2 school manager 
                        ->select(['sph.email_address'])
                        ->get();
        
        $school_email = $school_user[0]->email_address;   
        
        if($school_pay_amount > 1)                 
            $result = $this->payOut($school_email, $school_pay_amount, $pay_currency );      
        else $result = array();    

        $ret['code']    = '200';
        $ret['result']  = $result;
        $ret['msg']     = 'Completed successfully!';
        return Response::json($ret);
    }

    public function payOut($email, $amount, $currency) {
        /* {
            "sender_batch_header": {
              "sender_batch_id": "Payouts_2018_100007",
              "email_subject": "You have a payout!",
              "email_message": "You have received a payout! Thanks for using our service!"
            },
            "items": [
              {
                "recipient_type": "EMAIL",
                "amount": {
                  "value": "9.87",
                  "currency": "USD"
                },
                "note": "Thanks for your patronage!",
                "sender_item_id": "201403140001",
                "receiver": "receiver@example.com"
              }
            ]
          }
        */
        $paypal_conf = \Config::get('paypal');
        $api_context = new ApiContext(new OAuthTokenCredential(
                $paypal_conf['client_id'],
                $paypal_conf['secret'])
        );
        $api_context->setConfig($paypal_conf['settings']);
        
        $payouts = new Payout();
        $senderBatchHeader = new PayoutSenderBatchHeader();
        $senderBatchHeader->setSenderBatchId(uniqid())
                            ->setEmailSubject("You have a payout!");
        $senderItem1 = new PayoutItem();
        $senderItem1->setRecipientType('EMAIL')
                    ->setNote('Thanks you.')
                    ->setReceiver($email)
                    ->setSenderItemId("item_1" . uniqid())
                    ->setAmount(new Currency('{
                            "value":"'.$amount.'",
                            "currency":"'.$currency.'"
                    }'));

        $payouts->setSenderBatchHeader($senderBatchHeader)
                ->addItem($senderItem1);

        try {
            $output = $payouts->create(null,$api_context);
            return $output;                               
        } catch (Exception $ex) {        
            //echo "PayPal Payout GetData:<br>". print_r($ex->getData()) . "<br><br>";; return;
            return $ex->getData();
        }  
              
    }
}