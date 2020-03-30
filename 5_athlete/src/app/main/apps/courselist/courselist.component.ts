import { Component, OnDestroy, OnInit, QueryList, ViewChildren, ViewEncapsulation } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

import { fuseAnimations } from '@fuse/animations';
import { FusePerfectScrollbarDirective } from '@fuse/directives/fuse-perfect-scrollbar/fuse-perfect-scrollbar.directive';
import { FormControl, FormGroup } from '@angular/forms';
import { ViewChild } from '@angular/core';

import { CourseListService } from 'app/main/apps/courselist/courselist.service';

import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { isDevMode } from '@angular/core';
import { Router } from '@angular/router';

import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from './i18n/en'
import { locale as italian } from './i18n/it';

import { Location, Appearance } from '@angular-material-extensions/google-maps-autocomplete';
import { } from 'googlemaps';
import PlaceResult = google.maps.places.PlaceResult;

declare var google;

@Component({
    selector: 'course-list',
    templateUrl: './courselist.component.html',
    styleUrls: ['./courselist.component.scss'],
    encapsulation: ViewEncapsulation.None,
    animations: fuseAnimations
})

export class CourseListComponent implements OnInit, OnDestroy {
    arrListData: any[] = [];
    arrListSchools: any[] = [];

    animationDirection: 'left' | 'right' | 'none';
    course: any;

    form: FormGroup;

    urlHeader = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}`;
    defImageUrl = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}` + '/uploads/trainer/def.png';

    public appearance = Appearance;
    public zoom: number;
    public latitude: number = 41.90370080000001;
    public longitude: number = 12.496235200000001;
    public selectedAddress: PlaceResult;

    cityName : string;
    @ViewChildren(FusePerfectScrollbarDirective)
    fuseScrollbarDirectives: QueryList<FusePerfectScrollbarDirective>;

    // Private
    private _unsubscribeAll: Subject<any>;

    @ViewChild('map') mapElement: any;
    map: google.maps.Map;

    constructor(
        private _service: CourseListService,
        private _fuseTranslationLoaderService: FuseTranslationLoaderService,
        private router: Router) {
        // Set the defaults
        this.animationDirection = 'none';

        // Set the private defaults
        this._unsubscribeAll = new Subject();
        this.form = this.createSelectForm();

        this._fuseTranslationLoaderService.loadTranslations(english, italian);
    }

    /**
     * On init
     */
    ngOnInit(): void {
        // this.setCurrentPosition();
        this._service.onCourseListChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(courselist => {
                this.arrListData = courselist;
            });

        this._service.onSchoolListChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(schoolList => {
                this.arrListSchools = schoolList;
                this.refreshGoogleMap();
            });
    }

    refreshGoogleMap()
    {
        const mapProperties = {
            center: new google.maps.LatLng(this._service.currentLat, this._service.currentLong),
            zoom: 14,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        this.map = new google.maps.Map(this.mapElement.nativeElement, mapProperties);
        this.setMarkers();
    }

    createSelectForm(): FormGroup {
        return new FormGroup({
            city: new FormControl(''),
            type: new FormControl(''),
            bio: new FormControl(''),
        });
    }

    setMarkers() {
        var marker, i;
        for (i = 0; i < this.arrListSchools.length; i++) {

            var lati = +this.arrListSchools[i].lati;
            var long = +this.arrListSchools[i].longi;
            let latlngset = new google.maps.LatLng(lati, long);

            var marker = new google.maps.Marker({
                map: this.map, title: this.arrListSchools[i].school_name, position: latlngset
            });
            this.map.setCenter(marker.getPosition())

            var content = this.makeSchoolContent(i);
            var infowindow = new google.maps.InfoWindow()

            google.maps.event.addListener(marker,'click', (function(marker,content,infowindow){ 
                return function() {
                    infowindow.setContent(content);
                    infowindow.open(this.map, marker);
                };
            })(marker,content,infowindow)); 
        }
    }

    makeSchoolContent(i)
    {
        let data : any = this.arrListSchools[i];
        var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h2 id="firstHeading" class="firstHeading">' +  data.school_name + '</h2>'+
            '<div id="bodyContent">'+
            '<img style="width: 50px;height;50px" src="' + this.urlHeader + data.school_pic + '" />' +
            '<p> <strong> Manager : ' + data.user_name + '</strong></p>' ;

        for( let k = 0 ; k < data.course_list.length; k++)
        {
            contentString = contentString + '<p> <strong>' + data.course_list[k].course_name + '</strong> </p>' +
            '<p> Desc : ' + data.course_list[k].course_desc + '</p>'+
            '<p> Price : ' + data.course_list[k].course_price + ' € </p>';
        }

        contentString = contentString +'</div>'+ '</div>';

        return contentString;
    }

    onAutocompleteSelected(result: PlaceResult) {
        this.cityName = result.name;
    }

    onLocationSelected(location: Location) {
        this.latitude = location.latitude;
        this.longitude = location.longitude;
    }

    /**
     * On destroy
     */
    ngOnDestroy(): void {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    }

    viewContent(item) {
        this.router.navigate(['/coursedetail/' + this.latitude + '/' + this.longitude + '/' + item.course_id]);
    }

    onClickSearch() {
        this.router.navigate(['/courselist/' + this.latitude + '/' + this.longitude]);
    }
  
    goBack() {
        // this._location.back();
        this.router.navigate(['/landing/0']);
    }
}