import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';


@Component(
  selector: 'dante-privacy',
  styleUrls: const [
    'dante_privacy_component.css',
  ],
  templateUrl: 'dante_privacy_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [materialProviders],
)
class DantePrivacyComponent {

}