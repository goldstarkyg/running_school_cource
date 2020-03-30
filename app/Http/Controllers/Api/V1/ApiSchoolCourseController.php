<?php

namespace App\Http\Controllers\Api\V1;


use App\Http\Datautil\Util;
use App\Http\Requests\UserRequest;
use App\Mail\Restore;
use App\Models\Package;
use App\Models\School;
use App\Models\User;
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


class ApiSchoolCourseController extends Controller
{
    public function buyPackage($manager_id, Request $request)
    {
        $pay_status = $request->get('pay_status');
        $pay_amount = $request->get('pay_amount');
        $package = \DB::table('school_package')
            ->insert([
                'package_id'   => $request->get('package_id'),
                'pay_amount'   => $pay_amount,
                'pay_status'   => $pay_status,
                'user_id'      => $manager_id
            ]);
        $ret['code']    = '200';
        $ret['msg']     = 'Completed successfully!';
        return Response::json($ret);
    }

    public function buyPackageDetail($manager_id, Request $request)
    {
        $user_id    = $request->get('user_id');
        $package_id = $request->get('package_id');
        $pay_amount = $request->get('pay_amount');
        $pay_currency = $request->get('currency');
        $details    = $request->get('details');
        $details_arr = $details;
        $intent     = $details_arr['intent'];
        $order_id   = $details_arr['id'];
        $purchase_unit = json_encode($details_arr['purchase_units']);
        $payer      =  $details_arr['payer'];
        $payer_id   = $payer['payer_id'];
        $email_address = $payer['email_address'];


        $package_detail = \DB::table('school_pay_history')
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

        $ret['code']    = '200';
        $ret['msg']     = 'Completed successfully!';
        return Response::json($ret);
    }

    public function confirmPackage($manager_id, Request $request)
    {

        $package = \DB::table('school_package')
            ->where('user_id', $manager_id)
            ->first();
        if ($package) $status = 1;
        else $status = 0;
        $ret = array();
        $ret['status']    = $status;
        $ret['code']     = 200;
        return Response::json($ret);
    }

    public function createCourse(Request $request)
    {

        $ret = array();
        if ($file = $request->file('course_pic')) {
            $extension = $file->extension() ?: 'png';
            $destinationPath = public_path() . '/uploads/courses/';
            $safeName = str_random(10) . '.' . $extension;
            $file->move($destinationPath, $safeName);
            $request['pic'] = '/uploads/courses/' . $safeName;
        }
        DB::beginTransaction();
        $course_id = \DB::table('school_course')->insertGetId([
            'school_id'     => $request->input('school_id'),
            'pic'           => $request->input('pic'),
            'course_id'     => $request->input('course_id'),
            'level_id'      => $request->input('level_id'),
            'course_name'   => $request->input('course_name'),
            'course_desc'   => $request->input('course_desc'),
            'course_dates'  => $request->input('course_dates'),
            'course_days'   => $request->input('course_days'),
            'course_seats'  => $request->input('course_seats'),
            'price'         => $request->input('price'),
            'status'        => 0,
            'trainer_id'    => $request->input('trainer_id'),
            'author_id'     => $request->input('user_id'),
        ]);
        if ($course_id > 0) {
            $dates      =   $request->input('course_dates');
            $dates_array = json_decode($dates, true);

            $list = array();
            foreach ($dates_array as $date) {
                $one = array();
                $one['school_course_id'] = $course_id;
                $one['course_id']  = $request->input('course_id');
                $one['level_id']   = $request->input('level_id');
                $one['lesson_name']  = $date['lesson_name'];
                $one['lesson_desc']  = $date['lesson_desc'];
                $one['lesson_date']  = $date['lesson_date'];
                $one['start_time']   = $date['start_time'];
                $one['end_time']     = $date['end_time'];
                $one['trainer_id']   = $request->input('trainer_id');
                $one['author_id']    = $request->input('user_id');
                $list[] = $one;
            }

            $date_list = \DB::table('school_course_date')->insert($list);
            $ret['code']    = '200';
            $ret['msg']     = 'Completed successfully!';
        } else {
            DB::rollBack();
            $ret['code']    = '400';
            $ret['msg']     = 'Caan not register. Plese register again.';
        }
        DB::commit();
        return Response::json($ret);
    }

    public function updateCourse($course_id, Request $request)
    {
        $ret = array();
        if ($file = $request->file('course_pic')) {
            $extension = $file->extension() ?: 'png';
            $destinationPath = public_path() . '/uploads/courses/';
            $safeName = str_random(10) . '.' . $extension;
            $file->move($destinationPath, $safeName);
            $request['pic'] = '/uploads/courses/' . $safeName;
        }
        $course = \DB::table('school_course')
            ->where('id', $course_id)
            ->first();

        if (File::exists(public_path() . $course->pic)) {
            File::delete(public_path() . $course->pic);
        }

        $activated =  $course->activated;
        if ($activated == 0) {
            DB::beginTransaction();
            $req = $req = $request->except('course_pic', 'user_id', 'token', 'role');
            $req['author_id'] = $request->get('user_id');

            $course_update = \DB::table('school_course')
                ->where('id', $course_id)
                ->update($req);

            if ($course_update) {
                //delete date
                $dates_delete = \DB::table('school_course_date')->where('school_course_id', $course_id)->delete();

                $dates          = $request->input('course_dates');
                $dates_array    = json_decode($dates, true);

                $list = array();
                foreach ($dates_array as $date) {

                    $one = array();
                    $one['school_course_id'] = $course_id;
                    $one['course_id']    = $course->course_id;
                    $one['level_id']     = $request->input('level_id', 0);
                    $one['lesson_name']  = $date['lesson_name'];
                    $one['lesson_desc']  = $date['lesson_desc'];
                    $one['lesson_date']  = $date['lesson_date'];
                    $one['start_time']   = $date['start_time'];
                    $one['end_time']     = $date['end_time'];
                    $one['trainer_id']   = $request->input('trainer_id', 0);
                    $one['author_id']    = $request->input('user_id');
                    $list[] = $one;
                }

                $date_list = \DB::table('school_course_date')->insert($list);

                $ret['code']    = '200';
                $ret['msg']     = 'Completed successfully!';
            } else {
                $ret['code']    = '400';
                $ret['msg']     = 'Can not update.';
                DB::rollBack();
            }
            DB::commit();
        } else {
            $ret['code']    = '400';
            $ret['msg']     = 'Can not update. activated status is true.';
        }
        return Response::json($ret);
    }

    public function activeUpdate($course_id, Request $request)
    {
        $ret = array();
        $activated_status   = $request->get("active", 0);
        $trainer_id         = $request->get("trainer_id", 0);

        if ($trainer_id != 0) {
            $course = \DB::table('school_course')
                ->where('id', $course_id)
                ->update(['status' => $activated_status, 'activated' => $activated_status, 'trainer_id' => $trainer_id]);

            $course_dates = \DB::table('school_course_date')
                ->where('school_course_id', $course_id)
                ->update(['status' => $activated_status, 'trainer_id' => $trainer_id]);
        }
        else
        {
            $course = \DB::table('school_course')
                ->where('id', $course_id)
                ->update(['status' => $activated_status, 'activated' => $activated_status]);

            $course_dates = \DB::table('school_course_date')
                ->where('school_course_id', $course_id)
                ->update(['status' => $activated_status]);
        }

        $course_reservation = false;
        if ($activated_status == 2) // if school admin want to close this course.... it must be applied to reservation table.
        {
            $course_reservation = \DB::table('school_course_reservation')
                ->where('school_course_id', $course_id)
                ->update(['status' => $activated_status]);
        }

        if ($course_dates && $course && $course_reservation) {
            $ret['code']    = '200';
            $ret['msg']     = 'Completed successfully!';
        } else {
            $ret['code']    = '404';
            $ret['msg']     = 'Invalid parameter!';
        }

        return Response::json($ret);
    }

    public function getCourseList(Request $request)
    {
        $_id = $request->get('id', 0);
        $course_id = $request->get('course_id', 0);
        $level_id  = $request->get('level_id', 0);
        $school_id = $request->get('school_id', 0);
        $status    = $request->get('status', 5);
        $trainer_id = $request->get('trainer_id', 0);

        $courses    = \DB::table('school_course as sc')
            ->leftJoin('course_main as cm', 'cm.id', '=', 'sc.course_id')
            ->leftJoin('course_level as cl', 'cl.id', '=', 'sc.level_id')
            ->leftJoin('users as u', 'u.id', '=', 'sc.trainer_id')
            ->leftJoin('users as us', 'us.id', '=', 'sc.author_id');

        if ($_id != 0)
            $courses = $courses->where('sc.id', $_id);
        if ($course_id != 0)
            $courses = $courses->where('sc.course_id', $course_id);
        if ($level_id != 0)
            $courses = $courses->where('sc.level_id', $level_id);
        if ($school_id != 0)
            $courses = $courses->where('sc.school_id', $school_id);
        if ($status != 5)
            $courses = $courses->where('sc.status', $status);
        if ($trainer_id != 0)
            $courses = $courses->where('sc.trainer_id', $trainer_id);

        $courses = $courses->select([
            'sc.*', 'cm.course_name as quarter_name', 'cl.level_name',
            'u.first_name as trainer_first_name', 'u.last_name as trainer_last_name',
            'us.first_name as author_first_name', 'us.last_name as author_last_name'
        ])->get();
        return Response::json($courses);
    }

    public function getCourseListByPosition(Request $request)
    {
        $latitude = $request->get('lati', 0);
        $longitude = $request->get('longi', 0);
        
        $course_id = $request->get('course_id', 0);
        $courses    = \DB::table('school_course as sc')
            ->leftJoin('course_main as cm', 'cm.id', '=', 'sc.course_id')
            ->leftJoin('course_level as cl', 'cl.id', '=', 'sc.level_id')
            ->leftJoin('users as u', 'u.id', '=', 'sc.trainer_id')
            ->leftJoin('users as us', 'us.id', '=', 'sc.author_id')
            ->leftJoin('schools as scs', 'scs.id', '=', 'sc.school_id');
 
        if( $course_id != 0 )
            $courses = $courses->where('sc.id', $course_id);

        $courses = $courses->where('scs.lati', '>', $latitude-0.05)
                            ->where('scs.lati', '<', $latitude+0.05)
                            ->where('scs.longi', '>', $longitude-0.05)
                            ->where('scs.longi', '<', $longitude+0.05);

        $courses = $courses->select([
            'sc.*', 'cm.course_name as quarter_name', 'cl.level_name',
            'u.first_name as trainer_first_name', 'u.last_name as trainer_last_name',
            'us.first_name as author_first_name', 'us.last_name as author_last_name',
            'scs.name as sname', 'scs.address as saddr', 'scs.state as sstate',
            'scs.region as sregion', 'scs.province as sprov', 'scs.city as scity',
            'u.pic as trainer_pic','sc.id as cid'
        ])->get();

        $ret = array(); 
        foreach ($courses as $course) {
            $arr = array(); $course_list = array();
         
            $arr['location'] = $course->saddr . ', ' . $course->scity . ', ' . $course->sregion . ', ' . $course->sprov . ', ' . $course->sstate;
            $arr['school_name'] = $course->sname;
            $arr['course_name'] = $course->course_name;
            $arr['course_level'] = $course->level_name;
            $arr['course_desc'] = $course->course_desc;
            $arr['course_id'] = $course->cid;
            
            $dates = $course->course_dates;
            $dates_array    = json_decode($dates, true);

            foreach ($dates_array as $date) {
                $one = array();
         
                $one['lesson_name'] = $date['lesson_name'];
                $one['lesson_desc'] = $date['lesson_desc'];
                $one['lesson_date'] = $date['lesson_date'];
                $one['start_time']  = $date['start_time'];
                $one['end_time']    = $date['end_time'];
                $one['trainer_name'] = $course->trainer_first_name . ' ' . $course->trainer_last_name;
                $one['trainer_pic'] = $course->trainer_pic;

                // $course_list[] = $one;
                array_push($course_list, $one);
            }

            $arr['courses'] = $course_list;
            array_push($ret, $arr);
        }

        return Response::json($ret);
    }

    public function getSchoolListByPosition(Request $request)
    {
        $latitude = $request->get('lati', 0);
        $longitude = $request->get('longi', 0);

        $schools    = \DB::table('schools as scs')
                    ->leftJoin('users as urs', 'urs.id', '=', 'scs.user_id')
                    ->where('scs.lati', '>', $latitude-0.05)
                    ->where('scs.lati', '<', $latitude+0.05)
                    ->where('scs.longi', '>', $longitude-0.05)
                    ->where('scs.longi', '<', $longitude+0.05)
                    ->get(['scs.*','urs.pic as upic','urs.first_name as ufname','urs.last_name as ulname']);

        $ret = array();
        foreach( $schools as $school )
        {
            $courses    = \DB::table('school_course as sc')
                ->leftJoin('course_level as cl', 'cl.id', '=', 'sc.level_id')
                ->select([ 'sc.course_name as cname', 'sc.course_desc as cdesc', 'cl.level_name as lname', 'sc.price as cprice'])
                ->where('sc.school_id', $school->id)
                ->get();

            $course_list = array();
            foreach( $courses as $course )
            {
                $arrItem = array();
                $arrItem['course_name'] = $course->cname;
                $arrItem['course_desc'] = $course->cdesc;
                $arrItem['course_price'] = $course->cprice;

                array_push($course_list, $arrItem);
            }

            $arr = array();
            $arr['school_id']      = $school->id;
            $arr['school_name']    = $school->name;
            $arr['school_pic']     = $school->upic;
            $arr['lati']           = $school->lati;
            $arr['longi']          = $school->longi;
            $arr['user_name']      = $school->ufname . ' ' . $school->ulname;
            $arr['course_list']    = $course_list;

            array_push($ret, $arr);
        }

        return Response::json($ret);
    }
    
    public function getCourseDetailWithCourseID($course_id, Request $request)
    {
        $user_id   = $request->get('user_id', 0);
        //---------------------------------------
        $courses    = \DB::table('school_course as sc')
            ->leftJoin('course_main as cm', 'cm.id', '=', 'sc.course_id')
            ->leftJoin('course_level as cl', 'cl.id', '=', 'sc.level_id')
            ->leftJoin('users as u', 'u.id', '=', 'sc.trainer_id')
            ->leftJoin('users as us', 'us.id', '=', 'sc.author_id')
            ->leftJoin('schools as scs', 'scs.id', '=', 'sc.school_id')
            ->where('sc.id', $course_id);
        
        $courses = $courses->select([
                'sc.*', 'cm.course_name as quarter_name', 'cl.level_name',
                'u.first_name as trainer_first_name', 'u.last_name as trainer_last_name',
                'us.first_name as author_first_name', 'us.last_name as author_last_name',
                'scs.name as sname', 'scs.address as saddr', 'scs.state as sstate',
                'scs.region as sregion', 'scs.province as sprov', 'scs.city as scity',
                'u.pic as trainer_pic','sc.id as cid', 'scs.banner_path as sc_banner', 
            ])->get();
        //---------------------------------------

        //---------------------------------------
        $school_id = $courses[0]->school_id;
        $school_courses    = \DB::table('school_course as sc')
            ->leftJoin('course_main as cm', 'cm.id', '=', 'sc.course_id')
            ->leftJoin('course_level as cl', 'cl.id', '=', 'sc.level_id')
            ->leftJoin('users as u', 'u.id', '=', 'sc.trainer_id')
            ->leftJoin('users as us', 'us.id', '=', 'sc.author_id')
            ->leftJoin('schools as scs', 'scs.id', '=', 'sc.school_id')
            ->where('sc.school_id', $school_id)
            ->where('sc.status', '1')
            ->where('sc.id', '!=', $course_id);
        
        $school_courses = $school_courses->select([
                'sc.*','cl.level_name as lname',
            ])->get();

        //---------------------------------------
        $school_trainers    = \DB::table('school_course as sc')
            ->leftJoin('users as u', 'u.id', '=', 'sc.trainer_id')
            ->where('sc.school_id', $school_id)
            ->where('sc.status', '1')
            ->groupBy('u.id');

        $school_trainers = $school_trainers->select([
                'u.id', 'u.pic as pic',
            ])->get();
        //---------------------------------------

        $reserve = \DB::table('school_course_reservation as scr')
        ->where('scr.school_course_id', $course_id)
        ->where('scr.user_id', $user_id)
        ->select(['scr.status'])
        ->first();

        $ret = array(); 
        foreach ($courses as $course) {
            $arr = array(); $course_list = array();
            $scourse_list = array();  $trainer_list = array(); 
             
            $arr['location'] = $course->saddr . ', ' . $course->scity . ', ' . $course->sregion . ', ' . $course->sprov . ', ' . $course->sstate;
            $arr['school_name'] = $course->sname;
            $arr['course_name'] = $course->course_name;
            $arr['course_level'] = $course->level_name;
            $arr['course_desc'] = $course->course_desc;
            $arr['course_id'] = $course->cid;
            $arr['trainer_pic'] = $course->trainer_pic;
            $arr['school_pic'] = $course->sc_banner;
            $arr['trainer_name'] = $course->trainer_first_name . ' ' . $course->trainer_last_name;
            $arr['trainer_id'] = $course->trainer_id;

            $dates = $course->course_dates;
            $dates_array    = json_decode($dates, true);

            //------Lessons-------//
            foreach ($dates_array as $date) {
                $one = array();
         
                $one['lesson_name'] = $date['lesson_name'];
                $one['lesson_desc'] = $date['lesson_desc'];
                $one['lesson_date'] = $date['lesson_date'];
                $one['start_time']  = $date['start_time'];
                $one['end_time']    = $date['end_time'];

                // $course_list[] = $one;
                array_push($course_list, $one);
            }
            //------------------------------

            //------Related course-------//
            foreach ($school_courses as $scourse) {
                $sc = array();

                $sc['course_id'] = $scourse->id;
                $sc['course_name'] = $scourse->course_name;
                $sc['course_desc'] = $scourse->course_desc;
                $sc['course_level'] = $scourse->lname;
                $sc['course_seats'] = $scourse->course_seats;
                $sc['price'] = $scourse->price;

                array_push($scourse_list, $sc);
            }
            //------------------------------

            //------School trainers-------//
            foreach ($school_trainers as $trainer) {
                $tr = array();
                $tr['id']   = $trainer->id;
                $tr['pic']  = $trainer->pic;
                
                array_push($trainer_list, $tr);
            }
            //------------------------------

            $arr['courses'] = $course_list;
            $arr['related'] = $scourse_list;
            $arr['trainers'] = $trainer_list;

            if ( $reserve )
                $arr['reserved'] = $reserve->status;
            else
                $arr['reserved'] = '-1';

            array_push($ret, $arr);
        }

        return Response::json($ret);
    }
}
