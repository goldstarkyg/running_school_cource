import { FuseUtils } from '@fuse/utils';
var Course = /** @class */ (function () {
    //filecourse : File;
    /**
     * Constructor
     *
     * @param course
     */
    function Course(course) {
        {
            this.id = course.id || FuseUtils.generateGUID();
            this.course_name = course.course_name || '';
            this.course_content = course.course_content || '';
            this.to_date = course.to_date || '';
            this.course_pic = course.course_pic || 'assets/images/courses/athlete_default.jpg';
            this.from_date = course.from_date || '';
            this.status = course.status || '0';
            // this.filecourse = course.filecourse;            
        }
    }
    return Course;
}());
export { Course };
//# sourceMappingURL=course.model.js.map