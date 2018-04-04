import 'package:ShockbytesHome/src/service/app_service.dart';
import 'package:ShockbytesHome/src/service/model/app.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';


@Component(
  selector: 'apps',
  styleUrls: const [
    'apps_component.css',
  ],
  templateUrl: 'apps_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [materialProviders],
)
class AppsComponent implements OnInit {

  AppService _appService;
  List<App> apps;

  AppsComponent(this._appService);

  @override
  ngOnInit() {
    _appService.apps().listen((data) => this.apps = new List.from(data));
  }

}