import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:js';

import 'package:ShockbytesHome/src/service/model/app.dart';
import 'package:angular/angular.dart';

@Injectable()
class AppService {
  Future<List<App>> _readApps() async {
    List<App> apps = new List<App>();
    String jsonString = await HttpRequest.getString('./data/apps.json');
    JsArray data = JSON.decode(jsonString);
    data.map((f) => new App.fromMap(f)).forEach((app) => apps.add(app));
    return apps;
  }

  Stream<List<App>> apps() {
    return new Stream.fromFuture(new Future(_readApps));
  }
}
