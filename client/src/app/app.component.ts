import { Component, OnInit }  from '@angular/core';
import { ROUTER_DIRECTIVES }  from '@angular/router';

import { AuthService }        from './services/auth.service'
import { LoginFormComponent } from './authentication/login-form.component';
import { SignupFormComponent } from './authentication/signup-form.component';
import { NavbarComponent }    from './navigation/navbar.component';

// Add the RxJS Observable operators we need in this app.
import './rxjs-operators';

@Component({
  selector: 'stft-app',
  template: `
  <stft-navbar></stft-navbar>
  <router-outlet></router-outlet>
  `,
  providers:  [
    AuthService
  ],
  directives: [ROUTER_DIRECTIVES, NavbarComponent]
})

export class AppComponent implements OnInit {
  constructor (private authService: AuthService) { }

  ngOnInit() {
    this.authService.getToken();
  }
}