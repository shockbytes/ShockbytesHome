import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:ShockbytesHome/src/service/model/generic_profile_entry.dart';
import 'package:ShockbytesHome/src/service/model/me.dart';
import 'package:ShockbytesHome/src/service/model/skill.dart';
import 'package:angular/angular.dart';



@Injectable()
class ProfileService {

  Map _json;

  ProfileService() {
    _loadProfileInformation();
  }

  _loadProfileInformation() async {
    String jsonString = await HttpRequest.getString('/data/profile.json');
    _json = JSON.decode(jsonString);
    print(_json.runtimeType);
    print(_json.toString());
  }

  Me _parseMe() {
    // TODO
    return null;
  }

  List<Skill> _parseSkills() {
    // TODO
    return null;
  }

  List<GenericProfileEntry> _parseEducation() {
    // TODO
    return null;
  }

  List<GenericProfileEntry> _parseWork() {
    // TODO
    return null;
  }

  Stream<Me> me() {
    return new Stream.fromFuture(new Future(_parseMe));
  }

  Stream<List<Skill>> skills() {
    return new Stream.fromFuture(new Future(_parseSkills));
  }

  Stream<List<GenericProfileEntry>> education() {
    return new Stream.fromFuture(new Future(_parseEducation));
  }

  Stream<List<GenericProfileEntry>> work() {
    return new Stream.fromFuture(new Future(_parseWork));
  }


}