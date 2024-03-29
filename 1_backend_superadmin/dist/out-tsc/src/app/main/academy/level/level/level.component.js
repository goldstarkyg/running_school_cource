import * as tslib_1 from "tslib";
import { ChangeDetectorRef, Component, QueryList, ViewChildren, ViewEncapsulation } from '@angular/core';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { fuseAnimations } from '@fuse/animations';
import { FusePerfectScrollbarDirective } from '@fuse/directives/fuse-perfect-scrollbar/fuse-perfect-scrollbar.directive';
import { FuseSidebarService } from '@fuse/components/sidebar/sidebar.service';
import { AcademyCourseService } from 'app/main/academy/course.service';
var AcademyLevelComponent = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param {AcademyCourseService} _academyCourseService
     * @param {ChangeDetectorRef} _changeDetectorRef
     * @param {FuseSidebarService} _fuseSidebarService
     */
    function AcademyLevelComponent(_academyCourseService, _changeDetectorRef, _fuseSidebarService) {
        this._academyCourseService = _academyCourseService;
        this._changeDetectorRef = _changeDetectorRef;
        this._fuseSidebarService = _fuseSidebarService;
        // Set the defaults
        this.animationDirection = 'none';
        this.currentStep = 0;
        // Set the private defaults
        this._unsubscribeAll = new Subject();
    }
    // -----------------------------------------------------------------------------------------------------
    // @ Lifecycle hooks
    // -----------------------------------------------------------------------------------------------------
    /**
     * On init
     */
    AcademyLevelComponent.prototype.ngOnInit = function () {
        var _this = this;
        // Subscribe to courses
        this._academyCourseService.onCourseChanged
            .pipe(takeUntil(this._unsubscribeAll))
            .subscribe(function (course) {
            _this.course = course;
        });
    };
    /**
     * After view init
     */
    AcademyLevelComponent.prototype.ngAfterViewInit = function () {
        this.courseStepContent = this.fuseScrollbarDirectives.find(function (fuseScrollbarDirective) {
            return fuseScrollbarDirective.elementRef.nativeElement.id === 'course-step-content';
        });
    };
    /**
     * On destroy
     */
    AcademyLevelComponent.prototype.ngOnDestroy = function () {
        // Unsubscribe from all subscriptions
        this._unsubscribeAll.next();
        this._unsubscribeAll.complete();
    };
    // -----------------------------------------------------------------------------------------------------
    // @ Public methods
    // -----------------------------------------------------------------------------------------------------
    /**
     * Go to step
     *
     * @param step
     */
    AcademyLevelComponent.prototype.gotoStep = function (step) {
        // Decide the animation direction
        this.animationDirection = this.currentStep < step ? 'left' : 'right';
        // Run change detection so the change
        // in the animation direction registered
        this._changeDetectorRef.detectChanges();
        // Set the current step
        this.currentStep = step;
    };
    /**
     * Go to next step
     */
    AcademyLevelComponent.prototype.gotoNextStep = function () {
        if (this.currentStep === this.course.totalSteps - 1) {
            return;
        }
        // Set the animation direction
        this.animationDirection = 'left';
        // Run change detection so the change
        // in the animation direction registered
        this._changeDetectorRef.detectChanges();
        // Increase the current step
        this.currentStep++;
    };
    /**
     * Go to previous step
     */
    AcademyLevelComponent.prototype.gotoPreviousStep = function () {
        if (this.currentStep === 0) {
            return;
        }
        // Set the animation direction
        this.animationDirection = 'right';
        // Run change detection so the change
        // in the animation direction registered
        this._changeDetectorRef.detectChanges();
        // Decrease the current step
        this.currentStep--;
    };
    /**
     * Toggle the sidebar
     *
     * @param name
     */
    AcademyLevelComponent.prototype.toggleSidebar = function (name) {
        this._fuseSidebarService.getSidebar(name).toggleOpen();
    };
    tslib_1.__decorate([
        ViewChildren(FusePerfectScrollbarDirective),
        tslib_1.__metadata("design:type", QueryList)
    ], AcademyLevelComponent.prototype, "fuseScrollbarDirectives", void 0);
    AcademyLevelComponent = tslib_1.__decorate([
        Component({
            selector: 'academy-level',
            templateUrl: './level.component.html',
            styleUrls: ['./level.component.scss'],
            encapsulation: ViewEncapsulation.None,
            animations: fuseAnimations
        }),
        tslib_1.__metadata("design:paramtypes", [AcademyCourseService,
            ChangeDetectorRef,
            FuseSidebarService])
    ], AcademyLevelComponent);
    return AcademyLevelComponent;
}());
export { AcademyLevelComponent };
//# sourceMappingURL=level.component.js.map