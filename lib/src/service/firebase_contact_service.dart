import 'package:ShockbytesHome/src/service/contact_service.dart';
import 'package:ShockbytesHome/src/service/model/contact_request.dart';
import 'package:ShockbytesHome/src/service/model/firebase_credentials.dart';
import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart' as fb;

@Injectable()
class FirebaseContactService implements ContactService {

  fb.DatabaseReference _fbRefContactRequests;

  FirebaseContactService() {
    _setup();
  }

  void _setup() {
    var credentials = FirebaseCredentials.getCredentials();

    fb.initializeApp(
        apiKey: credentials["apiKey"],
        authDomain: credentials["authDomain"],
        databaseURL: credentials["databaseURL"],
        storageBucket: credentials["storageBucket"]);

    _fbRefContactRequests = fb.database().ref("contact_request");

    print("Firebase initialized");
  }

  @override
  void sendContactRequest(ContactRequest request) {
    _fbRefContactRequests.push(request.toMap());
  }
}
