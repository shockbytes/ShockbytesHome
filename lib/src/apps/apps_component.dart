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

  Router _router;
  AppService _appService;

  List<App> apps;

  AppsComponent(this._appService, this._router);

  @override
  ngOnInit() {
    _appService.apps().listen((data) {
      if (data.length > 0) {
        this.apps = new List.from(data);
      }
    });
  }

  onClickMoreApp(App app) {
    print(app.name);
  }

}