import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:js';

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
  }

  Me _parseMe() {
    return new Me.fromMap(_json['me']);
  }

  List<Skill> _parseSkills() {
    List<Skill> skills = new List<Skill>();
    var data = _json['skills'];
    data.map((f) => new Skill.fromMap(f)).forEach((s) => skills.add(s));
    return skills;
  }

  List<GenericProfileEntry> _parseEducation() {
    return _parseGenericProfileEntryList(_json['education']);
  }

  List<GenericProfileEntry> _parseWork() {
    return _parseGenericProfileEntryList(_json['work']);
  }

  List<GenericProfileEntry> _parseGenericProfileEntryList(var json) {
    List<GenericProfileEntry> entries = new List<GenericProfileEntry>();
    json
        .map((f) => new GenericProfileEntry.fromMap(f))
        .forEach((gpe) => entries.add(gpe));
    return entries;
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