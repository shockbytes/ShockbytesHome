import 'package:ShockbytesHome/src/service/model/me.dart';
import 'package:ShockbytesHome/src/service/profile_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'profile',
  styleUrls: const [
    'profile_component.css',
  ],
  templateUrl: 'profile_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [materialProviders],
)
class ProfileComponent {
  var me = new Me(
      name: "Martin Macheiner, BSc.",
      job: "Mobile Developer",
      mail: "martin_macheiner@outlook.com",
      icon: "/data/profile_res/me.png");

  final ProfileService _profileService;

  ProfileComponent(this._profileService);

}
