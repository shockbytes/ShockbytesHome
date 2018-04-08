import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:js';

import 'package:ShockbytesHome/src/service/model/app.dart';
import 'package:ShockbytesHome/src/service/model/remi_download.dart';
import 'package:angular/angular.dart';

@Injectable()
class AppService {

  Stream<List<App>> apps() {
    return new Stream.fromFuture(new Future(_readApps));
  }

  Stream<List<RemiDownload>> remiDownloads() {
    return new Stream.fromFuture(new Future(_readRemiDownloads));
  }

  Future<List<App>> _readApps() async {
    List<App> apps = new List<App>();
    String jsonString = await HttpRequest.getString('./data/apps.json');
    JsArray data = JSON.decode(jsonString);
    data.map((f) => new App.fromMap(f)).forEach((app) => apps.add(app));
    return apps;
  }

  Future<List<RemiDownload>> _readRemiDownloads() async {
    List<RemiDownload> rd = new List<RemiDownload>();
    String j = await HttpRequest.getString('./data/app_res/download_list.json');
    JsArray data = JSON.decode(j);
    data.map((f) => new RemiDownload.fromMap(f)).forEach((d) => rd.add(d));
    return rd;
  }

}
