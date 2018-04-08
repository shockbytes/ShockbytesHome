import 'package:ShockbytesHome/src/apps/apps_component.dart';
import 'package:ShockbytesHome/src/apps/dante/dante_privacy_component.dart';
import 'package:ShockbytesHome/src/apps/remi/remi_component.dart';
import 'package:ShockbytesHome/src/contact/contact_component.dart';
import 'package:ShockbytesHome/src/home/home_component.dart';
import 'package:ShockbytesHome/src/profile/profile_component.dart';
import 'package:ShockbytesHome/src/service/app_service.dart';
import 'package:ShockbytesHome/src/service/blog_service.dart';
import 'package:ShockbytesHome/src/service/firebase_contact_service.dart';
import 'package:ShockbytesHome/src/service/profile_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'my-app',
  styleUrls: const [
    'app_component.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
  templateUrl: 'app_component.html',
  directives: const [
    materialDirectives,
    HomeComponent,
    ProfileComponent,
    AppsComponent,
    DeferredContentDirective,
    MaterialButtonComponent,
    FixedMaterialTabStripComponent,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [
    materialProviders,
    BlogService,
    AppService,
    ProfileService,
    FirebaseContactService
  ],
)
@RouteConfig(const [
  const Route(path: '/home', name: 'Home', component: HomeComponent),
  const Route(path: '/profile', name: 'Profile', component: ProfileComponent),
  const Route(path: '/apps', name: 'Apps', component: AppsComponent),
  const Route(path: '/contact', name: 'Contact', component: ContactComponent),
  const Route(path: '/apps/remi', name: 'Remi', component: RemiComponent),
  const Route(
      path: '/apps/dante/privacy',
      name: 'DantePrivacy',
      component: DantePrivacyComponent),
  const Redirect(path: '/', redirectTo: const ['Home']),
])
class AppComponent {
  final Router _router;
  final contactFormEnabled = false;

  AppComponent(this._router);

  drawerSelect(int index) {
    switch (index) {
      case 0:
        _router.navigate(['Home']);
        break;

      case 1:
        _router.navigate(['Profile']);
        break;

      case 2:
        _router.navigate(['Apps']);
        break;
    }
  }

  showContact() {
    _router.navigate(['Contact']);
  }
}
