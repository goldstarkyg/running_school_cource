import * as tslib_1 from "tslib";
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MatButtonModule, MatDatepickerModule, MatFormFieldModule, MatIconModule, MatInputModule, MatSelectModule, MatToolbarModule, MatSlideToggleModule } from '@angular/material';
import { FuseSharedModule } from '@fuse/shared.module';
import { AcademyCoursesComponent } from 'app/main/academy/course/courses/courses.component';
import { AcademyCourseComponent } from 'app/main/academy/course/course/course.component';
import { AcademyLevelsComponent } from 'app/main/academy/level/levels/levels.component';
import { AcademyLevelComponent } from 'app/main/academy/level/level/level.component';
import { AcademyLessonsComponent } from 'app/main/academy/lesson/lessons/lessons.component';
import { AcademyLessonComponent } from 'app/main/academy/lesson/lesson/lesson.component';
import { AcademyCoursesService } from 'app/main/academy/courses.service';
import { AcademyCourseService } from 'app/main/academy/course.service';
import { FuseSidebarModule } from '@fuse/components';
import { CourseFormDialogComponent } from 'app/main/academy/course/course-form/course-form.component';
import { LevelsLevelFormDialogComponent } from 'app/main/academy/level/level-form/level-form.component';
import { LessonsLessonFormDialogComponent } from 'app/main/academy/lesson/lesson-form/lesson-form.component';
var routes = [
    {
        path: 'courses',
        component: AcademyCoursesComponent,
        resolve: {
            academy: AcademyCoursesService
        }
    },
    {
        path: 'levels',
        component: AcademyLevelsComponent,
        resolve: {
            academy: AcademyCoursesService
        }
    },
    {
        path: 'lessons',
        component: AcademyLessonsComponent,
        resolve: {
            academy: AcademyCoursesService
        }
    },
    {
        path: 'courses/:courseId/:courseSlug',
        component: AcademyCourseComponent,
        resolve: {
            academy: AcademyCourseService
        }
    },
    {
        path: 'lessons/:courseId/:courseSlug',
        component: AcademyLessonComponent,
        resolve: {
            academy: AcademyCourseService
        }
    },
    {
        path: '**',
        redirectTo: 'courses'
    }
];
var AcademyModule = /** @class */ (function () {
    function AcademyModule() {
    }
    AcademyModule = tslib_1.__decorate([
        NgModule({
            declarations: [
                AcademyCoursesComponent,
                AcademyCourseComponent,
                AcademyLevelsComponent,
                AcademyLevelComponent,
                AcademyLessonsComponent,
                AcademyLessonComponent,
                CourseFormDialogComponent,
                LevelsLevelFormDialogComponent,
                LessonsLessonFormDialogComponent
            ],
            imports: [
                RouterModule.forChild(routes),
                MatButtonModule,
                MatFormFieldModule,
                MatIconModule,
                MatInputModule,
                MatSelectModule,
                MatToolbarModule,
                MatDatepickerModule,
                MatSlideToggleModule,
                FuseSharedModule,
                FuseSidebarModule
            ],
            providers: [
                AcademyCoursesService,
                AcademyCourseService
            ],
            entryComponents: [
                CourseFormDialogComponent,
                LevelsLevelFormDialogComponent,
                LessonsLessonFormDialogComponent
            ]
        })
    ], AcademyModule);
    return AcademyModule;
}());
export { AcademyModule };
//# sourceMappingURL=academy.module.js.map