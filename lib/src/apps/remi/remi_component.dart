import 'package:ShockbytesHome/src/service/app_service.dart';
import 'package:ShockbytesHome/src/service/model/remi/remi_download.dart';
import 'package:ShockbytesHome/src/service/model/remi/remi_feature.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'dart:html';


@Component(
  selector: 'remi',
  styleUrls: const [
    'remi_component.css',
  ],
  templateUrl: 'remi_component.html',
  directives: const [materialDirectives, CORE_DIRECTIVES, ROUTER_DIRECTIVES],
  providers: const [materialProviders],
)
class RemiComponent implements OnInit {
  final AppService _appService;

  List<RemiDownload> downloads;
  List<RemiFeature> features;

  RemiComponent(this._appService);

  @override
  ngOnInit() {

    // Load download versions
    _appService.remiDownloads().then((d) {
      downloads = new List.from(d);
      _initializeDownloadLinks(downloads[0]);
    });

    // Load app features
    _appService.remiFeatures().then((f) => features = new List.from(f));
  }

  _initializeDownloadLinks(RemiDownload newest) {
    querySelector("#win-download").onClick.listen((_) {
      new AnchorElement(href: "${newest.winFile}")
        ..setAttribute("download", "Remi Desktop App v${newest.version}.exe")
        ..click();
    });
    querySelector("#jar-download").onClick.listen((_) {
      new AnchorElement(href: "${newest.jarFile}")
        ..setAttribute("download", "Remi Desktop App v${newest.version}.jar")
        ..click();
    });
  }

}