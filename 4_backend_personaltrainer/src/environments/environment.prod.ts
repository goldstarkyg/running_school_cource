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
