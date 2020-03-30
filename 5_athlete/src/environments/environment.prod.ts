// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.
let current_domain = window.location.hostname;
let url = window.location.href;
let arr = url.split("/");
let current_path = arr[0] + "//" + current_domain+"/"

export const environment = {
    production: true,
    hmr       : false,
    baseUrl: current_path+'api/', // http://localhost/api/
    basePageUrl: current_path , // http://localhost/
};
