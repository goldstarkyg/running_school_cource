import { FuseNavigation } from '@fuse/types';

export const navigation: FuseNavigation[] = [
    {
        id: 'applications',
        title: 'Find for',
        translate: 'FIND',
        type: 'group',
        icon: 'find_in_page',
        children: [
            {
                id: 'course',
                title: 'Courses',
                translate: 'COURSE',
                type: 'item',
                icon: 'school',
                url: '/curcourselist'
            },
        ]
    },
    {
        id: 'applications',
        title: 'Accountant manage',
        translate: 'ACCOUNT',
        type: 'group',
        icon: 'account_circle',
        children: [
            {
                id: 'sample',
                title: 'Contactus',
                translate: 'CONTACT',
                type: 'item',
                icon: 'mail',
                url: '/auth/contactus'
            },
            {
                id: 'sample',
                title: 'SignIn',
                translate: 'SIGNIN',
                type: 'item',
                icon: 'account_circle',
                url: '/auth/login'
            }
        ]
    }
];

export const navigation1: FuseNavigation[] = [
    {
        id: 'applications',
        title: 'Find for',
        translate: 'FIND',
        type: 'group',
        icon: 'find_in_page',
        children: [
            {
                id: 'course',
                title: 'Courses',
                translate: 'COURSE',
                type: 'item',
                icon: 'school',
                url: '/curcourselist'
            },
            // {
            //     id: 'sample',
            //     title: 'Trainer',
            //     translate: 'TRAINER',
            //     type: 'item',
            //     icon: 'accessibility',
            //     url: '/lcourses'
            // },
            {
                id: 'mycourse',
                title: 'MyActivity',
                translate: 'ACTIVITY',
                type: 'item',
                icon: 'golf_course',
                url: '/mycourses'
            }
        ]
    },
    {
        id: 'applications',
        title: 'Accountant manage',
        translate: 'ACCOUNT',
        type: 'group',
        icon: 'account_circle',
        children: [
            {
                id: 'sample',
                title: 'Contactus',
                translate: 'CONTACT',
                type: 'item',
                icon: 'mail',
                url: '/auth/contactus'
            },
            {
                id: 'sample',
                title: 'SignOut',
                translate: 'SIGNOUT',
                type: 'item',
                icon: 'account_circle',
                url: '/landing/1'
            }
        ]
    }
];
