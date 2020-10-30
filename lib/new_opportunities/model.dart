/// id : 350865
/// name : "Betway: Live Sports Betting iPhone (IN) (Incentive)"
/// anchor : "Download Betway: Live Sports Betting and open."
/// requirements : "Download and open the app."
/// multiple_conversions_allowed : false
/// multiple_conversions_rules : null
/// user_agent : ["iphone"]
/// mobile_only : true
/// creatives : {"icon":"https://main-p.agmcdn.com/offers/350865-MU6LlfNn.jpg"}
/// epc : "0.18"
/// categories : ["iPhone"]
/// tools : ["virtual_currency"]
/// lockers : {"epc":"0.08","desktop_average_epc":"0.00","mobile_average_epc":"0.08"}
/// adgate_rewards : {"cpm":"0.00","anchor":"Betway: Live Sports Betting","requirements":"Download and open the app.","description":"Bet on ALL your favourite sports with Betway. We’ve got the best odds right here. Ready to heed your hunch?\n\n\nOnline betting is easy: choose your game, get live odds and place a bet! View tips, stats and match results straight from your phone."}
/// countries : ["IN"]
/// type : "flat"
/// payout : "0.80"
/// click_url : "http://adgatetraffic.com/cl/350865/69499?s1="
/// preview_url : "https://apps.apple.com/gb/app/betway-live-sports-betting/id538775096?uo=4&at=10l9yE"

class Model {
  int id;
  String name;
  String anchor;
  String requirements;
  bool multipleConversionsAllowed;
  dynamic multipleConversionsRules;
  List<String> userAgent;
  bool mobileOnly;
  Creatives creatives;
  String epc;
  List<String> categories;
  List<String> tools;
  Lockers lockers;
  Adgate_rewards adgateRewards;
  List<String> countries;
  String type;
  String payout;
  String clickUrl;
  String preview_url;

  Model(
      {this.id,
      this.name,
      this.anchor,
      this.requirements,
      this.multipleConversionsAllowed,
      this.multipleConversionsRules,
      this.userAgent,
      this.mobileOnly,
      this.creatives,
      this.epc,
      this.categories,
      this.tools,
      this.lockers,
      this.adgateRewards,
      this.countries,
      this.type,
      this.payout,
      this.clickUrl,
      this.preview_url});

  Model.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    anchor = json["anchor"];
    requirements = json["requirements"];
    multipleConversionsAllowed = json["multipleConversionsAllowed"];
    multipleConversionsRules = json["multipleConversionsRules"];
    userAgent =
        json["userAgent"] != null ? json["userAgent"].cast<String>() : [];
    mobileOnly = json["mobileOnly"];
    creatives = json["creatives"] != null
        ? Creatives.fromJson(json["creatives"])
        : null;
    epc = json["epc"];
    categories =
        json["categories"] != null ? json["categories"].cast<String>() : [];
    tools = json["tools"] != null ? json["tools"].cast<String>() : [];
    lockers =
        json["lockers"] != null ? Lockers.fromJson(json["lockers"]) : null;
    adgateRewards = json["adgateRewards"] != null
        ? Adgate_rewards.fromJson(json["adgateRewards"])
        : null;
    countries =
        json["countries"] != null ? json["countries"].cast<String>() : [];
    type = json["type"];
    payout = json["payout"];
    clickUrl = json["clickUrl"];
    preview_url = json["preview_url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["anchor"] = anchor;
    map["requirements"] = requirements;
    map["multipleConversionsAllowed"] = multipleConversionsAllowed;
    map["multipleConversionsRules"] = multipleConversionsRules;
    map["userAgent"] = userAgent;
    map["mobileOnly"] = mobileOnly;
    if (creatives != null) {
      map["creatives"] = creatives.toJson();
    }
    map["epc"] = epc;
    map["categories"] = categories;
    map["tools"] = tools;
    if (lockers != null) {
      map["lockers"] = lockers.toJson();
    }
    if (adgateRewards != null) {
      map["adgateRewards"] = adgateRewards.toJson();
    }
    map["countries"] = countries;
    map["type"] = type;
    map["payout"] = payout;
    map["clickUrl"] = clickUrl;
    map["preview_url"] = preview_url;
    return map;
  }
}

/// cpm : "0.00"
/// anchor : "Betway: Live Sports Betting"
/// requirements : "Download and open the app."
/// description : "Bet on ALL your favourite sports with Betway. We’ve got the best odds right here. Ready to heed your hunch?\n\n\nOnline betting is easy: choose your game, get live odds and place a bet! View tips, stats and match results straight from your phone."

class Adgate_rewards {
  String cpm;
  String anchor;
  String requirements;
  String description;

  Adgate_rewards({this.cpm, this.anchor, this.requirements, this.description});

  Adgate_rewards.fromJson(dynamic json) {
    cpm = json["cpm"];
    anchor = json["anchor"];
    requirements = json["requirements"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["cpm"] = cpm;
    map["anchor"] = anchor;
    map["requirements"] = requirements;
    map["description"] = description;
    return map;
  }
}

/// epc : "0.08"
/// desktop_average_epc : "0.00"
/// mobile_average_epc : "0.08"

class Lockers {
  String epc;
  String desktopAverageEpc;
  String mobileAverageEpc;

  Lockers({this.epc, this.desktopAverageEpc, this.mobileAverageEpc});

  Lockers.fromJson(dynamic json) {
    epc = json["epc"];
    desktopAverageEpc = json["desktopAverageEpc"];
    mobileAverageEpc = json["mobileAverageEpc"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["epc"] = epc;
    map["desktopAverageEpc"] = desktopAverageEpc;
    map["mobileAverageEpc"] = mobileAverageEpc;
    return map;
  }
}

/// icon : "https://main-p.agmcdn.com/offers/350865-MU6LlfNn.jpg"

class Creatives {
  String icon;

  Creatives({this.icon});

  Creatives.fromJson(dynamic json) {
    icon = json["icon"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["icon"] = icon;
    return map;
  }
}
