import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';


@Component(
  selector: 'dante',
  styleUrls: const [
    'dante_component.css',
  ],
  templateUrl: 'dante_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [materialProviders],
)
class DanteComponent {

  final Router _router;

  DanteComponent(this._router);

}