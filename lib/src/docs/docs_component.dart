import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';


@Component(
  selector: 'docs',
  styleUrls: const [
    'docs_component.css',
  ],
  templateUrl: 'docs_component.html',
  directives: const [materialDirectives, CORE_DIRECTIVES, ROUTER_DIRECTIVES],
  providers: const [materialProviders],
)
class DocsComponent implements OnInit {

  @override
  ngOnInit() {
    _initializeDownloadLinks();
  }

  _initializeDownloadLinks() {
    querySelector("#resume").onClick.listen((_) {
      new AnchorElement(href: "/data/profile_res/resume.pdf")
        ..setAttribute("download", "Resume_Martin_Macheiner.pdf")
        ..click();
    });
    querySelector("#bachelor_thesis").onClick.listen((_) {
      new AnchorElement(href: "/data/profile_res/bachelor_thesis_macheiner.pdf")
        ..setAttribute("download", "Bachelor_Thesis_Martin_Macheiner.pdf")
        ..click();
    });
    querySelector("#github").onClick.listen((_) {
      new AnchorElement(href: "https://github.com/shockbytes/")
        ..click();
    });
    querySelector("#linkedin").onClick.listen((_) {
      new AnchorElement(href: "https://at.linkedin.com/in/machm")
        ..click();
    });
    querySelector("#medium").onClick.listen((_) {
      new AnchorElement(href: "https://medium.com/@mescht93")
        ..click();
    });
  }

}