// (function (global) {

//     // map tells the System loader where to look for things
//     var map = {
//         'app': 'app',
//         'rxjs': 'lib/rxjs',
//         '@angular': 'lib/@angular',
//         'moment': 'lib/moment/moment.js',
//         'angular2-jwt': 'lib/angular2-jwt/angular2-jwt.js',
//     };

//     // packages tells the System loader how to load when no filename and/or no extension
//     var packages = {
//         'app': {main: 'main.js', defaultExtension: 'js'},
//         'rxjs': {defaultExtension: 'js'},
//         'angular2-jwt': {defaultExtension: 'js'},
//     };

//     var packageNames = [
//         '@angular/common',
//         '@angular/compiler',
//         '@angular/core',
//         '@angular/http',
//         '@angular/platform-browser',
//         '@angular/platform-browser-dynamic',
//         '@angular/router',
//         '@angular/router-deprecated',
//         '@angular/testing',
//         '@angular/upgrade',
//         '@angular/forms',
//     ];

//     // add package entries for angular packages in the form '@angular/common': { main: 'index.js', defaultExtension: 'js' }
//     packageNames.forEach(function (pkgName) {
//         packages[pkgName] = {main: 'index.js', defaultExtension: 'js'};
//     });

//     var config = {
//         map: map,
//         packages: packages
//     };

//     // filterSystemConfig - index.html's chance to modify config before we register it.
//     if (global.filterSystemConfig) {
//         global.filterSystemConfig(config);
//     }

//     System.config(config);

// })(this);