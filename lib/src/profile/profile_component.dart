import 'package:ShockbytesHome/src/service/model/generic_profile_entry.dart';
import 'package:ShockbytesHome/src/service/model/me.dart';
import 'package:ShockbytesHome/src/service/model/skill.dart';
import 'package:ShockbytesHome/src/service/profile_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import "package:ng_bootstrap/components/rating/rating.dart";

@Component(
  selector: 'profile',
  styleUrls: const [
    'profile_component.css',
  ],
  templateUrl: 'profile_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES,
    BsRatingComponent
  ],
  providers: const [materialProviders],
)
class ProfileComponent implements OnInit {
  num max = 10;
  bool isReadonly = true;

  Me me;
  List<Skill> skills;
  List<GenericProfileEntry> education;
  List<GenericProfileEntry> work;

  final ProfileService _profileService;

  ProfileComponent(this._profileService);

  @override
  ngOnInit() {
    if (!_isDataValid()) {
      _profileService.me().then((m) => me = m);
      _profileService.skills().then((s) => skills = new List.from(s));
      _profileService.education().then((e) => education = new List.from(e));
      _profileService.work().then((w) => work = new List.from(w));
    }
  }

  bool _isDataValid() =>
      me != null && skills != null && education != null && work != null;
}
