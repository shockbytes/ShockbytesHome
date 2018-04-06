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
  num rate = 7;
  bool isReadonly = true;

  Me me;
  List<Skill> skills;
  List<GenericProfileEntry> education;
  List<GenericProfileEntry> work;

  final ProfileService _profileService;

  ProfileComponent(this._profileService);

  @override
  ngOnInit() {
    _profileService.me().listen((m) => me = m);
    _profileService.skills().listen((s) => skills = new List.from(s));
    _profileService.education().listen((e) => education = new List.from(e));
    _profileService.work().listen((w) => work = new List.from(w));
  }
}
