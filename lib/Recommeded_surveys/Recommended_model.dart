/// surveys : [{"project_id":25717101,"name":"Lass uns wissen was du denkst","remaining_completes":337,"loi":19,"entry_link":"https://www.your-surveys.com?si=618&ssi=SUBID&unique_user_id=1&hmac=1ebb8ea2d8586319da5f6dbd18bf82b2&offer_id=25717101","c_project_id":1166102}]
import 'dart:convert';

List<Surveys> modelUserFromJson(String str) =>
    List<Surveys>.from(json.decode(str).map((x) => Surveys.fromJson(x)));

String modelUserToJson(List<Surveys> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserSurvey {
  List<Surveys> surveys;

  UserSurvey({this.surveys});

  UserSurvey.fromJson(dynamic json) {
    if (json["surveys"] != null) {
      surveys = [];
      json["surveys"].forEach((v) {
        surveys.add(Surveys.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (surveys != null) {
      map["surveys"] = surveys.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// project_id : 25717101
/// name : "Lass uns wissen was du denkst"
/// remaining_completes : 337
/// loi : 19
/// entry_link : "https://www.your-surveys.com?si=618&ssi=SUBID&unique_user_id=1&hmac=1ebb8ea2d8586319da5f6dbd18bf82b2&offer_id=25717101"
/// c_project_id : 1166102

class Surveys {
  int project_id;
  String name;
  int remainingCompletes;
  int loi;
  String entry_link;
  int c_project_id;

  Surveys(
      {this.project_id,
      this.name,
      this.remainingCompletes,
      this.loi,
      this.entry_link,
      this.c_project_id});

  Surveys.fromJson(dynamic json) {
    project_id = json["project_id"];
    name = json["name"];
    remainingCompletes = json["remainingCompletes"];
    loi = json["loi"];
    entry_link = json["entry_link"];
    c_project_id = json["c_project_id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["project_id"] = project_id;
    map["name"] = name;
    map["remainingCompletes"] = remainingCompletes;
    map["loi"] = loi;
    map["entryLink"] = entry_link;
    map["cProjectId"] = c_project_id;
    return map;
  }
}
