class DuckduckgoResponse {
  String? abstract;
  String? abstractSource;
  String? abstractText;
  String? abstractUrl;
  String? answer;
  String? answerType;
  String? definition;
  String? definitionSource;
  String? definitionUrl;
  String? entity;
  String? heading;
  String? image;
  int? imageHeight;
  int? imageIsLogo;
  int? imageWidth;
  String? infobox;
  String? redirect;
  List<RelatedTopics>? relatedTopics;
  List<dynamic>? results;
  String? type;
  Meta? meta;

  DuckduckgoResponse(
      {this.abstract,
      this.abstractSource,
      this.abstractText,
      this.abstractUrl,
      this.answer,
      this.answerType,
      this.definition,
      this.definitionSource,
      this.definitionUrl,
      this.entity,
      this.heading,
      this.image,
      this.imageHeight,
      this.imageIsLogo,
      this.imageWidth,
      this.infobox,
      this.redirect,
      this.relatedTopics,
      this.results,
      this.type,
      this.meta});

  DuckduckgoResponse.fromJson(Map<String, dynamic> json) {
    if (json["Abstract"] is String) {
      abstract = json["Abstract"];
    }
    if (json["AbstractSource"] is String) {
      abstractSource = json["AbstractSource"];
    }
    if (json["AbstractText"] is String) {
      abstractText = json["AbstractText"];
    }
    if (json["AbstractURL"] is String) {
      abstractUrl = json["AbstractURL"];
    }
    if (json["Answer"] is String) {
      answer = json["Answer"];
    }
    if (json["AnswerType"] is String) {
      answerType = json["AnswerType"];
    }
    if (json["Definition"] is String) {
      definition = json["Definition"];
    }
    if (json["DefinitionSource"] is String) {
      definitionSource = json["DefinitionSource"];
    }
    if (json["DefinitionURL"] is String) {
      definitionUrl = json["DefinitionURL"];
    }
    if (json["Entity"] is String) {
      entity = json["Entity"];
    }
    if (json["Heading"] is String) {
      heading = json["Heading"];
    }
    if (json["Image"] is String) {
      image = json["Image"];
    }
    if (json["ImageHeight"] is int) {
      imageHeight = json["ImageHeight"];
    }
    if (json["ImageIsLogo"] is int) {
      imageIsLogo = json["ImageIsLogo"];
    }
    if (json["ImageWidth"] is int) {
      imageWidth = json["ImageWidth"];
    }
    if (json["Infobox"] is String) {
      infobox = json["Infobox"];
    }
    if (json["Redirect"] is String) {
      redirect = json["Redirect"];
    }
    if (json["RelatedTopics"] is List) {
      relatedTopics = json["RelatedTopics"] == null
          ? null
          : (json["RelatedTopics"] as List)
              .map((e) => RelatedTopics.fromJson(e))
              .toList();
    }
    if (json["Results"] is List) {
      results = json["Results"] ?? [];
    }
    if (json["Type"] is String) {
      type = json["Type"];
    }
    if (json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Abstract"] = abstract;
    data["AbstractSource"] = abstractSource;
    data["AbstractText"] = abstractText;
    data["AbstractURL"] = abstractUrl;
    data["Answer"] = answer;
    data["AnswerType"] = answerType;
    data["Definition"] = definition;
    data["DefinitionSource"] = definitionSource;
    data["DefinitionURL"] = definitionUrl;
    data["Entity"] = entity;
    data["Heading"] = heading;
    data["Image"] = image;
    data["ImageHeight"] = imageHeight;
    data["ImageIsLogo"] = imageIsLogo;
    data["ImageWidth"] = imageWidth;
    data["Infobox"] = infobox;
    data["Redirect"] = redirect;
    if (relatedTopics != null) {
      data["RelatedTopics"] = relatedTopics?.map((e) => e.toJson()).toList();
    }
    if (results != null) {
      data["Results"] = results;
    }
    data["Type"] = type;
    if (meta != null) {
      data["meta"] = meta?.toJson();
    }
    return data;
  }
}

class Meta {
  dynamic attribution;
  dynamic blockgroup;
  dynamic createdDate;
  String? description;
  dynamic designer;
  dynamic devDate;
  String? devMilestone;
  List<Developer>? developer;
  String? exampleQuery;
  String? id;
  dynamic isStackexchange;
  String? jsCallbackName;
  dynamic liveDate;
  Maintainer? maintainer;
  String? name;
  String? perlModule;
  dynamic producer;
  String? productionState;
  String? repo;
  String? signalFrom;
  String? srcDomain;
  int? srcId;
  String? srcName;
  SrcOptions? srcOptions;
  dynamic srcUrl;
  String? status;
  String? tab;
  List<String>? topic;
  int? unsafe;

  Meta(
      {this.attribution,
      this.blockgroup,
      this.createdDate,
      this.description,
      this.designer,
      this.devDate,
      this.devMilestone,
      this.developer,
      this.exampleQuery,
      this.id,
      this.isStackexchange,
      this.jsCallbackName,
      this.liveDate,
      this.maintainer,
      this.name,
      this.perlModule,
      this.producer,
      this.productionState,
      this.repo,
      this.signalFrom,
      this.srcDomain,
      this.srcId,
      this.srcName,
      this.srcOptions,
      this.srcUrl,
      this.status,
      this.tab,
      this.topic,
      this.unsafe});

  Meta.fromJson(Map<String, dynamic> json) {
    attribution = json["attribution"];
    blockgroup = json["blockgroup"];
    createdDate = json["created_date"];
    if (json["description"] is String) {
      description = json["description"];
    }
    designer = json["designer"];
    devDate = json["dev_date"];
    if (json["dev_milestone"] is String) {
      devMilestone = json["dev_milestone"];
    }
    if (json["developer"] is List) {
      developer = json["developer"] == null
          ? null
          : (json["developer"] as List)
              .map((e) => Developer.fromJson(e))
              .toList();
    }
    if (json["example_query"] is String) {
      exampleQuery = json["example_query"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    isStackexchange = json["is_stackexchange"];
    if (json["js_callback_name"] is String) {
      jsCallbackName = json["js_callback_name"];
    }
    liveDate = json["live_date"];
    if (json["maintainer"] is Map) {
      maintainer = json["maintainer"] == null
          ? null
          : Maintainer.fromJson(json["maintainer"]);
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["perl_module"] is String) {
      perlModule = json["perl_module"];
    }
    producer = json["producer"];
    if (json["production_state"] is String) {
      productionState = json["production_state"];
    }
    if (json["repo"] is String) {
      repo = json["repo"];
    }
    if (json["signal_from"] is String) {
      signalFrom = json["signal_from"];
    }
    if (json["src_domain"] is String) {
      srcDomain = json["src_domain"];
    }
    if (json["src_id"] is int) {
      srcId = json["src_id"];
    }
    if (json["src_name"] is String) {
      srcName = json["src_name"];
    }
    if (json["src_options"] is Map) {
      srcOptions = json["src_options"] == null
          ? null
          : SrcOptions.fromJson(json["src_options"]);
    }
    srcUrl = json["src_url"];
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["tab"] is String) {
      tab = json["tab"];
    }
    if (json["topic"] is List) {
      topic = json["topic"] == null ? null : List<String>.from(json["topic"]);
    }
    if (json["unsafe"] is int) {
      unsafe = json["unsafe"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["attribution"] = attribution;
    data["blockgroup"] = blockgroup;
    data["created_date"] = createdDate;
    data["description"] = description;
    data["designer"] = designer;
    data["dev_date"] = devDate;
    data["dev_milestone"] = devMilestone;
    if (developer != null) {
      data["developer"] = developer?.map((e) => e.toJson()).toList();
    }
    data["example_query"] = exampleQuery;
    data["id"] = id;
    data["is_stackexchange"] = isStackexchange;
    data["js_callback_name"] = jsCallbackName;
    data["live_date"] = liveDate;
    if (maintainer != null) {
      data["maintainer"] = maintainer?.toJson();
    }
    data["name"] = name;
    data["perl_module"] = perlModule;
    data["producer"] = producer;
    data["production_state"] = productionState;
    data["repo"] = repo;
    data["signal_from"] = signalFrom;
    data["src_domain"] = srcDomain;
    data["src_id"] = srcId;
    data["src_name"] = srcName;
    if (srcOptions != null) {
      data["src_options"] = srcOptions?.toJson();
    }
    data["src_url"] = srcUrl;
    data["status"] = status;
    data["tab"] = tab;
    if (topic != null) {
      data["topic"] = topic;
    }
    data["unsafe"] = unsafe;
    return data;
  }
}

class SrcOptions {
  String? directory;
  int? isFanon;
  int? isMediawiki;
  int? isWikipedia;
  String? language;
  String? minAbstractLength;
  int? skipAbstract;
  int? skipAbstractParen;
  String? skipEnd;
  int? skipIcon;
  int? skipImageName;
  String? skipQr;
  String? sourceSkip;
  String? srcInfo;

  SrcOptions(
      {this.directory,
      this.isFanon,
      this.isMediawiki,
      this.isWikipedia,
      this.language,
      this.minAbstractLength,
      this.skipAbstract,
      this.skipAbstractParen,
      this.skipEnd,
      this.skipIcon,
      this.skipImageName,
      this.skipQr,
      this.sourceSkip,
      this.srcInfo});

  SrcOptions.fromJson(Map<String, dynamic> json) {
    if (json["directory"] is String) {
      directory = json["directory"];
    }
    if (json["is_fanon"] is int) {
      isFanon = json["is_fanon"];
    }
    if (json["is_mediawiki"] is int) {
      isMediawiki = json["is_mediawiki"];
    }
    if (json["is_wikipedia"] is int) {
      isWikipedia = json["is_wikipedia"];
    }
    if (json["language"] is String) {
      language = json["language"];
    }
    if (json["min_abstract_length"] is String) {
      minAbstractLength = json["min_abstract_length"];
    }
    if (json["skip_abstract"] is int) {
      skipAbstract = json["skip_abstract"];
    }
    if (json["skip_abstract_paren"] is int) {
      skipAbstractParen = json["skip_abstract_paren"];
    }
    if (json["skip_end"] is String) {
      skipEnd = json["skip_end"];
    }
    if (json["skip_icon"] is int) {
      skipIcon = json["skip_icon"];
    }
    if (json["skip_image_name"] is int) {
      skipImageName = json["skip_image_name"];
    }
    if (json["skip_qr"] is String) {
      skipQr = json["skip_qr"];
    }
    if (json["source_skip"] is String) {
      sourceSkip = json["source_skip"];
    }
    if (json["src_info"] is String) {
      srcInfo = json["src_info"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["directory"] = directory;
    data["is_fanon"] = isFanon;
    data["is_mediawiki"] = isMediawiki;
    data["is_wikipedia"] = isWikipedia;
    data["language"] = language;
    data["min_abstract_length"] = minAbstractLength;
    data["skip_abstract"] = skipAbstract;
    data["skip_abstract_paren"] = skipAbstractParen;
    data["skip_end"] = skipEnd;
    data["skip_icon"] = skipIcon;
    data["skip_image_name"] = skipImageName;
    data["skip_qr"] = skipQr;
    data["source_skip"] = sourceSkip;
    data["src_info"] = srcInfo;
    return data;
  }
}

class Maintainer {
  String? github;

  Maintainer({this.github});

  Maintainer.fromJson(Map<String, dynamic> json) {
    if (json["github"] is String) {
      github = json["github"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["github"] = github;
    return data;
  }
}

class Developer {
  String? name;
  String? type;
  String? url;

  Developer({this.name, this.type, this.url});

  Developer.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["type"] = type;
    data["url"] = url;
    return data;
  }
}

class RelatedTopics {
  String? firstUrl;
  Icon? icon;
  String? result;
  String? text;

  RelatedTopics({this.firstUrl, this.icon, this.result, this.text});

  RelatedTopics.fromJson(Map<String, dynamic> json) {
    if (json["FirstURL"] is String) {
      firstUrl = json["FirstURL"];
    }
    if (json["Icon"] is Map) {
      icon = json["Icon"] == null ? null : Icon.fromJson(json["Icon"]);
    }
    if (json["Result"] is String) {
      result = json["Result"];
    }
    if (json["Text"] is String) {
      text = json["Text"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["FirstURL"] = firstUrl;
    if (icon != null) {
      data["Icon"] = icon?.toJson();
    }
    data["Result"] = result;
    data["Text"] = text;
    return data;
  }
}

class Icon {
  String? height;
  String? url;
  String? width;

  Icon({this.height, this.url, this.width});

  Icon.fromJson(Map<String, dynamic> json) {
    if (json["Height"] is String) {
      height = json["Height"];
    }
    if (json["URL"] is String) {
      url = json["URL"];
    }
    if (json["Width"] is String) {
      width = json["Width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Height"] = height;
    data["URL"] = url;
    data["Width"] = width;
    return data;
  }
}
