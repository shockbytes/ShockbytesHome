import 'package:ShockbytesHome/src/service/app_service.dart';
import 'package:ShockbytesHome/src/service/model/remi_download.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';



@Component(
  selector: 'remi',
  styleUrls: const [
    'remi_component.css',
  ],
  templateUrl: 'remi_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [materialProviders],
)
class RemiComponent implements OnInit {

  final AppService _appService;
  List<RemiDownload> downloads;

  RemiComponent(this._appService);

  @override
  ngOnInit() {
    _appService.remiDownloads().listen((d) {
      if (d.length > 0) {
        downloads = new List.from(d);
        downloads.forEach((r) => print(r.file));
      }
    });
  }

}