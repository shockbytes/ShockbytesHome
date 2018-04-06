import 'package:ShockbytesHome/src/service/firebase_contact_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'contact',
  styleUrls: const [
    'contact_component.css',
  ],
  templateUrl: 'contact_component.html',
  directives: const [materialDirectives, CORE_DIRECTIVES, ROUTER_DIRECTIVES],
  providers: const [materialProviders],
)
class ContactComponent {

  final FirebaseContactService _contactService;

  ContactComponent(this._contactService);

}
