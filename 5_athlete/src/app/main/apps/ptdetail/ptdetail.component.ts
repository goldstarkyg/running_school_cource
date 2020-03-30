import { environment as env } from '../../../../environments/environment';
import { environment as envProd } from '../../../../environments/environment.prod';
import { Component, OnDestroy, OnInit, ViewEncapsulation, isDevMode } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Location } from '@angular/common';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { Router } from '@angular/router';

import { fuseAnimations } from '@fuse/animations';

import { PersonalTrainer } from './ptdetail.model';
import { PTDetailService } from './ptdetail.service';

@Component({
    selector: 'personal-detail',
    templateUrl: './ptdetail.component.html',
    styleUrls: ['./ptdetail.component.scss'],
    encapsulation: ViewEncapsulation.None,
    animations: fuseAnimations
})

export class PTDetailComponent implements OnInit, OnDestroy {
    form: FormGroup;
    // urlHeader = 'http://localhost';
    urlHeader = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}`;
    defImageUrl = `${isDevMode() && env.basePageUrl || envProd.basePageUrl}` + '/uploads/trainer/def.png';

    personaltrainer: PersonalTrainer;
    pageType: string;
    schoolForm: FormGroup;
    displayMode: Number;

    nTrainerNumber: string;

    // Private
    private _unsubscribeAll: Subject<any>;

    /**
     * Constructor
     *
     * @param {PersonalTrainerService} _PersonalTrainerService
     * @param {FormBuilder} _formBuilder
     * @param {Location} _location
     */
    constructor(
        private _PersonalTrainerService: PTDetailService,
        private _formBuilder: FormBuilder,
        private _location: Location,
        private router: Router,
    ) {
        this.nTrainerNumber = _PersonalTrainerService.trainerID;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }

    /**
     * On init
     */
    ngOnInit(): void {
        // Subscribe to update techmanager on changes
        this._PersonalTrainerService.onTrainerChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(personaltrainer => {
                if (personaltrainer) {
                    this.personaltrainer = new PersonalTrainer(personaltrainer);
                    this.pageType = 'edit';
                }

                this.schoolForm = this.createschoolForm();
            });

        this.form = this._formBuilder.group({
            first_name: [''],
            last_name: [''],
            gender: [''],
            nationality: [''],
            email: [''],
            birthday: [''],
            birthplace: [''],
            mobile: [''],
            state: [''],
            region: [''],
            province: [''],
            city: [''],
            postalCode: [''],
            group: [''],
            vat_number: [''],
            card_number: [''],
            certified_type: [''],
            fiscalCode: [''],
            membership: [''],
            bio: [''],
            // first_name: ['', [Validators.required, Validators.maxLength(5)]],
        });
    }

    /**
     * On destroy
     */
    ngOnDestroy(): void {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    }

    /**
     * Create techmanager form
     *
     * @returns {FormGroup}
     */
    createschoolForm(): FormGroup {
        return this._formBuilder.group({
            id: [this.personaltrainer.personal.id],
        });
    }

    goback(): void {
        this._location.back();
    }

    viewCourses(): void {
        var url = '/ptactivity/' + this.personaltrainer.personal.id;
        this.router.navigate([url]);  
    }
}
