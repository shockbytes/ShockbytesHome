import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:ShockbytesHome/src/service/model/generic_profile_entry.dart';
import 'package:ShockbytesHome/src/service/model/me.dart';
import 'package:ShockbytesHome/src/service/model/skill.dart';
import 'package:angular/angular.dart';

@Injectable()
class ProfileService {

  Future<Me> _parseMe() async{
    String jsonString = await HttpRequest.getString('/data/profile_me.json');
    return new Me.fromMap(JSON.decode(jsonString));
  }

  Future<List<Skill>> _parseSkills() async{
    List<Skill> skills = new List<Skill>();
    String jsonString = await HttpRequest.getString('/data/profile_skills.json');
    var data = JSON.decode(jsonString);
    data.map((f) => new Skill.fromMap(f)).forEach((s) => skills.add(s));
    return skills;
  }

  Future<List<GenericProfileEntry>> _parseEducation() async {
    String jsonString = await HttpRequest.getString('/data/profile_education.json');
    var education = JSON.decode(jsonString);
    return _parseGenericProfileEntryList(education);
  }

  Future<List<GenericProfileEntry>> _parseWork() async {
    String jsonString = await HttpRequest.getString('/data/profile_work.json');
    var work = JSON.decode(jsonString);
    return _parseGenericProfileEntryList(work);
  }

  List<GenericProfileEntry> _parseGenericProfileEntryList(var json) {
    List<GenericProfileEntry> entries = new List<GenericProfileEntry>();
    json
        .map((f) => new GenericProfileEntry.fromMap(f))
        .forEach((gpe) => entries.add(gpe));
    return entries;
  }

  Future<Me> me() {
    return new Future(_parseMe);
  }

  Future<List<Skill>> skills() {
    return new Future(_parseSkills);
  }

  Future<List<GenericProfileEntry>> education() {
    return new Future(_parseEducation);
  }

  Future<List<GenericProfileEntry>> work() {
    return new Future(_parseWork);
  }
}