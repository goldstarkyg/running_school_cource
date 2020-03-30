export var navigation = [
    {
        id: 'applications',
        title: 'Applications',
        translate: 'NAV.APPLICATIONS',
        type: 'group',
        children: [
            // {
            //     id       : 'dashboards',
            //     title    : 'Dashboards',
            //     translate: 'NAV.DASHBOARDS',
            //     type     : 'item',
            //     icon     : 'dashboard',
            //     url      : '/dashboard'
            // },
            // {
            //     id       : 'calendar',
            //     title    : 'Calendar',
            //     translate: 'NAV.CALENDAR',
            //     type     : 'item',
            //     icon     : 'today',
            //     url      : '/calendar'
            // },
            {
                id: 'group',
                title: 'Groups',
                translate: 'NAV.GROUPS',
                type: 'item',
                icon: 'group',
                url: '/grouplist'
            },
            {
                id: 'contactus',
                title: 'Contact us',
                translate: 'NAV.CONTACT_US',
                type: 'item',
                icon: 'account_box',
                url: '/contactus'
            },
            // {
            //     id       : 'mail',
            //     title    : 'Mail',
            //     translate: 'NAV.MAIL',
            //     type     : 'item',
            //     icon     : 'mail',
            //     url      : '/apps/mail'
            // },
            {
                id: 'school',
                title: 'Schools',
                translate: 'NAV.SCHOOL',
                type: 'collapsable',
                icon: 'school',
                children: [
                    {
                        id: 'school_list',
                        title: 'Running Schools',
                        translate: 'NAV.SCHOOL_LIST',
                        type: 'item',
                        url: '/apps/school/schools/1',
                        exactMatch: true
                    },
                    {
                        id: 'school_new',
                        title: 'Pending Schools',
                        translate: 'NAV.SCHOOL_ADD',
                        type: 'item',
                        url: '/apps/school/schools/0',
                    },
                    {
                        id: 'school_reject',
                        title: 'Rejected Schools',
                        translate: 'NAV.SCHOOL_REJECT',
                        type: 'item',
                        url: '/apps/school/schools/2',
                    },
                    {
                        id: 'school_delete',
                        title: 'Deleted Schools',
                        translate: 'NAV.SCHOOL_DELETE',
                        type: 'item',
                        url: '/apps/school/schools/3',
                    }
                ]
            },
            {
                id: 'trainer',
                title: 'Trainers',
                translate: 'NAV.TRAINERS',
                type: 'collapsable',
                icon: 'accessibility_new',
                children: [
                    {
                        id: 'trainer_list',
                        title: 'Accepted Trainers',
                        translate: 'NAV.TRAINER_LIST',
                        type: 'item',
                        url: 'apps/trainer/trainers/1',
                    },
                    {
                        id: 'trainer_new',
                        title: 'Pending Trainers',
                        translate: 'NAV.TRAINER_NEW',
                        type: 'item',
                        url: 'apps/trainer/pending-trainers',
                    },
                    {
                        id: 'trainer_rejected',
                        title: 'Rejected Trainers',
                        translate: 'NAV.TRAINER_REJECT',
                        type: 'item',
                        url: 'apps/trainer/trainers/2',
                    },
                    {
                        id: 'trainer_deleted',
                        title: 'Deleted Trainers',
                        translate: 'NAV.TRAINER_DELETE',
                        type: 'item',
                        url: 'apps/trainer/trainers/3',
                    }
                ]
            },
            {
                id: 'athlete',
                title: 'Athlete',
                translate: 'NAV.ATHLETE',
                type: 'collapsable',
                icon: 'directions_run',
                children: [
                    {
                        id: 'athlete_list',
                        title: 'Athlete List',
                        translate: 'NAV.ATHLETE_LIST',
                        type: 'item',
                        url: '/apps/athlete_list'
                    },
                    {
                        id: 'athlete_new',
                        title: 'Attendance',
                        translate: 'NAV.ATHLETE_ATTEND',
                        type: 'item',
                        url: '/apps/attendance'
                    }
                ]
            },
            {
                id: 'course',
                title: 'Course',
                translate: 'NAV.COURSE',
                type: 'collapsable',
                icon: 'local_library',
                children: [
                    {
                        id: 'course_list',
                        title: 'Quarter',
                        translate: 'NAV.COURSELIST',
                        type: 'item',
                        url: '/apps/course/courses'
                    },
                    {
                        id: 'level_list',
                        title: 'Level',
                        translate: 'NAV.LEVELLIST',
                        type: 'item',
                        url: '/apps/course/levels'
                    },
                    {
                        id: 'lesson_list',
                        title: 'Lesson',
                        translate: 'NAV.LESSONLIST',
                        type: 'item',
                        url: '/apps/course/lessons'
                    }
                ]
            },
            {
                id: 'mail_template',
                title: 'Mail template',
                translate: 'NAV.MAIL_TEMPLATE',
                type: 'item',
                icon: 'mail',
                url: '/mail_template'
            },
            {
                id: 'setting',
                title: 'General Settings',
                translate: 'NAV.SETTING',
                type: 'collapsable',
                icon: 'settings',
                children: [
                    {
                        id: 'user_setting',
                        title: 'User Setting',
                        translate: 'NAV.USER_SETTING',
                        type: 'item',
                        url: '/apps/athlete_list'
                    },
                    {
                        id: 'purchase_setting',
                        title: 'Purchase Setting',
                        translate: 'NAV.PURCHASE_SETTING',
                        type: 'item',
                        url: '/apps/attendance'
                    },
                    {
                        id: 'gen_setting',
                        title: 'General Setting',
                        translate: 'NAV.GEN_SETTING',
                        type: 'item',
                        url: '/apps/attendance'
                    }
                ]
            },
        ]
    }
];
//# sourceMappingURL=navigation.js.map