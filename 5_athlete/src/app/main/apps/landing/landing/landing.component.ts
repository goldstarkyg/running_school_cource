import { Component, OnDestroy, OnInit, ViewEncapsulation } from '@angular/core';
import { Subject } from 'rxjs';
import { fuseAnimations } from '@fuse/animations';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';

import { FuseTranslationLoaderService } from '@fuse/services/translation-loader.service';
import { locale as english } from '../i18n/en'
import { locale as italian } from '../i18n/it';
import { Router } from '@angular/router';
import { LandingService } from 'app/main/apps/landing/landing.service';
import { takeUntil } from 'rxjs/operators';
import { EventEmitterService } from 'app/services/event-emitter.service';
import { LocalsessionService } from '../../../../services/localsession.service'

// import { Title } from '@angular/platform-browser';
import { Location, Appearance } from '@angular-material-extensions/google-maps-autocomplete';
import { } from 'googlemaps';
import PlaceResult = google.maps.places.PlaceResult;

@Component({
    selector: 'landing-page',
    templateUrl: './landing.component.html',
    styleUrls: ['./landing.component.scss'],
    animations: fuseAnimations,
    encapsulation: ViewEncapsulation.None,
})
export class LandingPageComponent implements OnInit, OnDestroy {
    form: FormGroup;

    // Private
    private _unsubscribeAll: Subject<any>;

    public appearance = Appearance;
    public zoom: number;
    public latitude: number;
    public longitude: number;
    public selectedAddress: PlaceResult;

    /**
     * Constructor
     *
     * @param {AcademyCoursesService} _academyCoursesService
     */
    constructor(
        private _fuseTranslationLoaderService: FuseTranslationLoaderService,
        private router: Router,
        private _service: LandingService,
        private eventEmitterService: EventEmitterService,
        private session: LocalsessionService,
        // private titleService: Title
    ) {
        // Set the private defaults
        this._unsubscribeAll = new Subject();
        this._fuseTranslationLoaderService.loadTranslations(english, italian);

        this.form = this.createSelectForm();
    }

    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------

    createSelectForm(): FormGroup {
        return new FormGroup({
            city: new FormControl(''),
            type: new FormControl(''),
        });
    }

    /**
     * On init
     */
    ngOnInit(): void {
        // onSignInStateChanged
        this._service.onSignInStateChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(response => {
                let code = response['code'];
                let msg = response['msg'];

                if (code == 200 && msg == 'You have successfully logged out!') {
                    this.session.saveIsAthleteLogin('false');
                    this.eventEmitterService.onUpdateNavigation();

                    this.router.navigate(['/landing/0']);
                }
                response = null;
            });

        // this.titleService.setTitle('Home | @angular-material-extensions/google-maps-autocomplete');

        this.zoom = 10;
        this.latitude = 0;
        this.longitude = 0;

        this.setCurrentPosition();
    }

    private setCurrentPosition() {
        if ('geolocation' in navigator) {
            navigator.geolocation.getCurrentPosition((position) => {
                this.latitude = position.coords.latitude;
                this.longitude = position.coords.longitude;
                this.zoom = 12;
            });
        }
    }

    locationPrepared : boolean = false;
    onAutocompleteSelected(result: PlaceResult) {
        console.log('onAutocompleteSelected: ', result);
    }

    onLocationSelected(location: Location) {
        console.log('onLocationSelected: ', location);
        this.latitude = location.latitude;
        this.longitude = location.longitude;

        this.locationPrepared = true;
    }

    /**
     * On destroy
     */
    ngOnDestroy(): void {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    }

    onClickSearch() {
        if( this.latitude == 0 && this.longitude == 0 )
            return;
        if( !this.locationPrepared )
            return;
            
        this.router.navigate(['/courselist/' + this.latitude + '/' + this.longitude]);
    }
}
