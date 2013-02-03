part of analytics_v3_api_client;

/** JSON template for Analytics account entry. */
class Account {

  /** Child link for an account entry. Points to the list of web properties for this account. */
  AccountChildLink childLink;

  /** Time the account was created. */
  String created;

  /** Account ID. */
  String id;

  /** Resource type for Analytics account. */
  String kind;

  /** Account name. */
  String name;

  /** Link for this account. */
  String selfLink;

  /** Time the account was last modified. */
  String updated;

  /** Create new Account from JSON data */
  Account.fromJson(Map json) {
    if (json.containsKey("childLink")) {
      childLink = new AccountChildLink.fromJson(json["childLink"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Account */
  Map toJson() {
    var output = new Map();

    if (childLink != null) {
      output["childLink"] = childLink.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Account */
  String toString() => JSON.stringify(this.toJson());

}

/** Child link for an account entry. Points to the list of web properties for this account. */
class AccountChildLink {

  /** Link to the list of web properties for this account. */
  String href;

  /** Type of the child link. Its value is "analytics#webproperties". */
  String type;

  /** Create new AccountChildLink from JSON data */
  AccountChildLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AccountChildLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AccountChildLink */
  String toString() => JSON.stringify(this.toJson());

}

/** An account collection provides a list of Analytics accounts to which a user has access. The account collection is the entry point to all management information. Each resource in the collection corresponds to a single Analytics account. */
class Accounts {

  /** A list of accounts. */
  List<Account> items;

  /** The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type. */
  String kind;

  /** Next link for this account collection. */
  String nextLink;

  /** Previous link for this account collection. */
  String previousLink;

  /** The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new Accounts from JSON data */
  Accounts.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Account.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for Accounts */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of Accounts */
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics custom data source. */
class CustomDataSource {

  /** Account ID to which this custom data source belongs. */
  String accountId;

  /** Child link for this custom data source. Points to the list of daily uploads for this custom data source. */
  CustomDataSourceChildLink childLink;

  /** Time this custom data source was created. */
  String created;

  /** Description of custom data source. */
  String description;

  /** Custom data source ID. */
  String id;

  /** Resource type for Analytics custom data source. */
  String kind;

  /** Name of this custom data source. */
  String name;

  /** Parent link for this custom data source. Points to the web property to which this custom data source belongs. */
  CustomDataSourceParentLink parentLink;
  List<String> profilesLinked;

  /** Link for this Analytics custom data source. */
  String selfLink;

  /** Time this custom data source was last modified. */
  String updated;

  /** Web property ID of the form UA-XXXXX-YY to which this custom data source belongs. */
  String webPropertyId;

  /** Create new CustomDataSource from JSON data */
  CustomDataSource.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("childLink")) {
      childLink = new CustomDataSourceChildLink.fromJson(json["childLink"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new CustomDataSourceParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("profilesLinked")) {
      profilesLinked = [];
      json["profilesLinked"].forEach((item) {
        profilesLinked.add(item);
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for CustomDataSource */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (childLink != null) {
      output["childLink"] = childLink.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (profilesLinked != null) {
      output["profilesLinked"] = new List();
      profilesLinked.forEach((item) {
        output["profilesLinked"].add(item);
      });
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of CustomDataSource */
  String toString() => JSON.stringify(this.toJson());

}

/** Parent link for this custom data source. Points to the web property to which this custom data source belongs. */
class CustomDataSourceParentLink {

  /** Link to the web property to which this custom data source belongs. */
  String href;

  /** Value is "analytics#webproperty". */
  String type;

  /** Create new CustomDataSourceParentLink from JSON data */
  CustomDataSourceParentLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CustomDataSourceParentLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CustomDataSourceParentLink */
  String toString() => JSON.stringify(this.toJson());

}

/** Child link for this custom data source. Points to the list of daily uploads for this custom data source. */
class CustomDataSourceChildLink {

  /** Link to the list of daily uploads for this custom data source. */
  String href;

  /** Value is "analytics#dailyUploads". */
  String type;

  /** Create new CustomDataSourceChildLink from JSON data */
  CustomDataSourceChildLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CustomDataSourceChildLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CustomDataSourceChildLink */
  String toString() => JSON.stringify(this.toJson());

}

/** Lists Analytics custom data sources to which the user has access. Each resource in the collection corresponds to a single Analytics custom data source. */
class CustomDataSources {

  /** Collection of custom data sources. */
  List<CustomDataSource> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type. */
  String kind;

  /** Link to next page for this custom data source collection. */
  String nextLink;

  /** Link to previous page for this custom data source collection. */
  String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new CustomDataSources from JSON data */
  CustomDataSources.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CustomDataSource.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for CustomDataSources */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of CustomDataSources */
  String toString() => JSON.stringify(this.toJson());

}

/** Metadata for daily upload entity. */
class DailyUpload {

  /** Account ID to which this daily upload belongs. */
  String accountId;

  /** Number of appends for this date. */
  int appendCount;

  /** Time this daily upload was created. */
  String createdTime;

  /** Custom data source ID to which this daily upload belongs. */
  String customDataSourceId;

  /** Date associated with daily upload. */
  String date;

  /** Resource type for Analytics daily upload. */
  String kind;

  /** Time this daily upload was last modified. */
  String modifiedTime;

  /** Parent link for a daily upload. Points to the custom data source to which this daily upload belongs. */
  DailyUploadParentLink parentLink;

  /** Change log for last 10 changes in chronological order. */
  List<DailyUploadRecentChanges> recentChanges;

  /** Link for this daily upload. */
  String selfLink;

  /** Web property ID of the form UA-XXXXX-YY to which this daily upload belongs. */
  String webPropertyId;

  /** Create new DailyUpload from JSON data */
  DailyUpload.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("appendCount")) {
      appendCount = json["appendCount"];
    }
    if (json.containsKey("createdTime")) {
      createdTime = json["createdTime"];
    }
    if (json.containsKey("customDataSourceId")) {
      customDataSourceId = json["customDataSourceId"];
    }
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modifiedTime")) {
      modifiedTime = json["modifiedTime"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new DailyUploadParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("recentChanges")) {
      recentChanges = [];
      json["recentChanges"].forEach((item) {
        recentChanges.add(new DailyUploadRecentChanges.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for DailyUpload */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (appendCount != null) {
      output["appendCount"] = appendCount;
    }
    if (createdTime != null) {
      output["createdTime"] = createdTime;
    }
    if (customDataSourceId != null) {
      output["customDataSourceId"] = customDataSourceId;
    }
    if (date != null) {
      output["date"] = date;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (modifiedTime != null) {
      output["modifiedTime"] = modifiedTime;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (recentChanges != null) {
      output["recentChanges"] = new List();
      recentChanges.forEach((item) {
        output["recentChanges"].add(item.toJson());
      });
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of DailyUpload */
  String toString() => JSON.stringify(this.toJson());

}

class DailyUploadRecentChanges {
  String change;
  String time;

  /** Create new DailyUploadRecentChanges from JSON data */
  DailyUploadRecentChanges.fromJson(Map json) {
    if (json.containsKey("change")) {
      change = json["change"];
    }
    if (json.containsKey("time")) {
      time = json["time"];
    }
  }

  /** Create JSON Object for DailyUploadRecentChanges */
  Map toJson() {
    var output = new Map();

    if (change != null) {
      output["change"] = change;
    }
    if (time != null) {
      output["time"] = time;
    }

    return output;
  }

  /** Return String representation of DailyUploadRecentChanges */
  String toString() => JSON.stringify(this.toJson());

}

/** Parent link for a daily upload. Points to the custom data source to which this daily upload belongs. */
class DailyUploadParentLink {

  /** Link to the custom data source to which this daily upload belongs. */
  String href;

  /** Value is "analytics#customDataSource". */
  String type;

  /** Create new DailyUploadParentLink from JSON data */
  DailyUploadParentLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for DailyUploadParentLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of DailyUploadParentLink */
  String toString() => JSON.stringify(this.toJson());

}

/** Metadata returned for a successful append operation. */
class DailyUploadAppend {

  /** Account Id to which this daily upload append belongs. */
  String accountId;

  /** Append number. */
  int appendNumber;

  /** Custom data source Id to which this daily upload append belongs. */
  String customDataSourceId;

  /** Date associated with daily upload append. */
  String date;

  /** Resource type for Analytics daily upload append. */
  String kind;
  String nextAppendLink;

  /** Web property Id of the form UA-XXXXX-YY to which this daily upload append belongs. */
  String webPropertyId;

  /** Create new DailyUploadAppend from JSON data */
  DailyUploadAppend.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("appendNumber")) {
      appendNumber = json["appendNumber"];
    }
    if (json.containsKey("customDataSourceId")) {
      customDataSourceId = json["customDataSourceId"];
    }
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextAppendLink")) {
      nextAppendLink = json["nextAppendLink"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for DailyUploadAppend */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (appendNumber != null) {
      output["appendNumber"] = appendNumber;
    }
    if (customDataSourceId != null) {
      output["customDataSourceId"] = customDataSourceId;
    }
    if (date != null) {
      output["date"] = date;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextAppendLink != null) {
      output["nextAppendLink"] = nextAppendLink;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of DailyUploadAppend */
  String toString() => JSON.stringify(this.toJson());

}

/** A daily upload collection lists Analytics daily uploads to which the user has access. Each resource in the collection corresponds to a single Analytics daily upload. */
class DailyUploads {

  /** A collection of daily uploads. */
  List<DailyUpload> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type. Value is analytics#dailyUploads. */
  String kind;

  /** Link to next page for this daily upload collection. */
  String nextLink;

  /** Link to previous page for this daily upload collection. */
  String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new DailyUploads from JSON data */
  DailyUploads.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new DailyUpload.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for DailyUploads */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of DailyUploads */
  String toString() => JSON.stringify(this.toJson());

}

/** Analytics data for a given profile. */
class GaData {

  /** Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. */
  List<GaDataColumnHeaders> columnHeaders;

  /** Determines if Analytics data contains samples. */
  bool containsSampledData;

  /** Unique ID for this data response. */
  String id;

  /** The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Resource type. */
  String kind;

  /** Link to next page for this Analytics data query. */
  String nextLink;

  /** Link to previous page for this Analytics data query. */
  String previousLink;

  /** Information for the profile, for which the Analytics data was requested. */
  GaDataProfileInfo profileInfo;

  /** Analytics data request query parameters. */
  GaDataQuery query;

  /** Link to this page. */
  String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  GaDataTotalsForAllResults totalsForAllResults;

  /** Create new GaData from JSON data */
  GaData.fromJson(Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = [];
      json["columnHeaders"].forEach((item) {
        columnHeaders.add(new GaDataColumnHeaders.fromJson(item));
      });
    }
    if (json.containsKey("containsSampledData")) {
      containsSampledData = json["containsSampledData"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("profileInfo")) {
      profileInfo = new GaDataProfileInfo.fromJson(json["profileInfo"]);
    }
    if (json.containsKey("query")) {
      query = new GaDataQuery.fromJson(json["query"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("totalsForAllResults")) {
      totalsForAllResults = new GaDataTotalsForAllResults.fromJson(json["totalsForAllResults"]);
    }
  }

  /** Create JSON Object for GaData */
  Map toJson() {
    var output = new Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = new List();
      columnHeaders.forEach((item) {
        output["columnHeaders"].add(item.toJson());
      });
    }
    if (containsSampledData != null) {
      output["containsSampledData"] = containsSampledData;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (profileInfo != null) {
      output["profileInfo"] = profileInfo.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (totalsForAllResults != null) {
      output["totalsForAllResults"] = totalsForAllResults.toJson();
    }

    return output;
  }

  /** Return String representation of GaData */
  String toString() => JSON.stringify(this.toJson());

}

/** Information for the profile, for which the Analytics data was requested. */
class GaDataProfileInfo {

  /** Account ID to which this profile belongs. */
  String accountId;

  /** Internal ID for the web property to which this profile belongs. */
  String internalWebPropertyId;

  /** Profile ID. */
  String profileId;

  /** Profile name. */
  String profileName;

  /** Table ID for profile. */
  String tableId;

  /** Web Property ID to which this profile belongs. */
  String webPropertyId;

  /** Create new GaDataProfileInfo from JSON data */
  GaDataProfileInfo.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("internalWebPropertyId")) {
      internalWebPropertyId = json["internalWebPropertyId"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("profileName")) {
      profileName = json["profileName"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for GaDataProfileInfo */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (internalWebPropertyId != null) {
      output["internalWebPropertyId"] = internalWebPropertyId;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (profileName != null) {
      output["profileName"] = profileName;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of GaDataProfileInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
class GaDataTotalsForAllResults {

  /** Create new GaDataTotalsForAllResults from JSON data */
  GaDataTotalsForAllResults.fromJson(Map json) {
  }

  /** Create JSON Object for GaDataTotalsForAllResults */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of GaDataTotalsForAllResults */
  String toString() => JSON.stringify(this.toJson());

}

/** Analytics data request query parameters. */
class GaDataQuery {

  /** List of analytics dimensions. */
  String dimensions;

  /** End date. */
  String end-date;

  /** Comma-separated list of dimension or metric filters. */
  String filters;

  /** Unique table ID. */
  String ids;

  /** Maximum results per page. */
  int max-results;

  /** List of analytics metrics. */
  List<String> metrics;

  /** Analytics advanced segment. */
  String segment;

  /** List of dimensions or metrics based on which Analytics data is sorted. */
  List<String> sort;

  /** Start date. */
  String start-date;

  /** Start index. */
  int start-index;

  /** Create new GaDataQuery from JSON data */
  GaDataQuery.fromJson(Map json) {
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"];
    }
    if (json.containsKey("end-date")) {
      end-date = json["end-date"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"];
    }
    if (json.containsKey("ids")) {
      ids = json["ids"];
    }
    if (json.containsKey("max-results")) {
      max-results = json["max-results"];
    }
    if (json.containsKey("metrics")) {
      metrics = [];
      json["metrics"].forEach((item) {
        metrics.add(item);
      });
    }
    if (json.containsKey("segment")) {
      segment = json["segment"];
    }
    if (json.containsKey("sort")) {
      sort = [];
      json["sort"].forEach((item) {
        sort.add(item);
      });
    }
    if (json.containsKey("start-date")) {
      start-date = json["start-date"];
    }
    if (json.containsKey("start-index")) {
      start-index = json["start-index"];
    }
  }

  /** Create JSON Object for GaDataQuery */
  Map toJson() {
    var output = new Map();

    if (dimensions != null) {
      output["dimensions"] = dimensions;
    }
    if (end-date != null) {
      output["end-date"] = end-date;
    }
    if (filters != null) {
      output["filters"] = filters;
    }
    if (ids != null) {
      output["ids"] = ids;
    }
    if (max-results != null) {
      output["max-results"] = max-results;
    }
    if (metrics != null) {
      output["metrics"] = new List();
      metrics.forEach((item) {
        output["metrics"].add(item);
      });
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (sort != null) {
      output["sort"] = new List();
      sort.forEach((item) {
        output["sort"].add(item);
      });
    }
    if (start-date != null) {
      output["start-date"] = start-date;
    }
    if (start-index != null) {
      output["start-index"] = start-index;
    }

    return output;
  }

  /** Return String representation of GaDataQuery */
  String toString() => JSON.stringify(this.toJson());

}

class GaDataColumnHeaders {

  /** Column Type. Either DIMENSION or METRIC. */
  String columnType;

  /** Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc. */
  String dataType;

  /** Column name. */
  String name;

  /** Create new GaDataColumnHeaders from JSON data */
  GaDataColumnHeaders.fromJson(Map json) {
    if (json.containsKey("columnType")) {
      columnType = json["columnType"];
    }
    if (json.containsKey("dataType")) {
      dataType = json["dataType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for GaDataColumnHeaders */
  Map toJson() {
    var output = new Map();

    if (columnType != null) {
      output["columnType"] = columnType;
    }
    if (dataType != null) {
      output["dataType"] = dataType;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of GaDataColumnHeaders */
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Analytics goal resource. */
class Goal {

  /** Account ID to which this goal belongs. */
  String accountId;

  /** Determines whether this goal is active. */
  bool active;

  /** Time this goal was created. */
  String created;

  /** Details for the goal of the type EVENT. */
  GoalEventDetails eventDetails;

  /** Goal ID. */
  String id;

  /** Internal ID for the web property to which this goal belongs. */
  String internalWebPropertyId;

  /** Resource type for an Analytics goal. */
  String kind;

  /** Goal name. */
  String name;

  /** Parent link for a goal. Points to the profile to which this goal belongs. */
  GoalParentLink parentLink;

  /** Profile ID to which this goal belongs. */
  String profileId;

  /** Link for this goal. */
  String selfLink;

  /** Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE, VISIT_NUM_PAGES, AND EVENT. */
  String type;

  /** Time this goal was last modified. */
  String updated;

  /** Details for the goal of the type URL_DESTINATION. */
  GoalUrlDestinationDetails urlDestinationDetails;

  /** Goal value. */
  num value;

  /** Details for the goal of the type VISIT_NUM_PAGES. */
  GoalVisitNumPagesDetails visitNumPagesDetails;

  /** Details for the goal of the type VISIT_TIME_ON_SITE. */
  GoalVisitTimeOnSiteDetails visitTimeOnSiteDetails;

  /** Web property ID to which this goal belongs. The web property ID is of the form UA-XXXXX-YY. */
  String webPropertyId;

  /** Create new Goal from JSON data */
  Goal.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("active")) {
      active = json["active"];
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("eventDetails")) {
      eventDetails = new GoalEventDetails.fromJson(json["eventDetails"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("internalWebPropertyId")) {
      internalWebPropertyId = json["internalWebPropertyId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new GoalParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("urlDestinationDetails")) {
      urlDestinationDetails = new GoalUrlDestinationDetails.fromJson(json["urlDestinationDetails"]);
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
    if (json.containsKey("visitNumPagesDetails")) {
      visitNumPagesDetails = new GoalVisitNumPagesDetails.fromJson(json["visitNumPagesDetails"]);
    }
    if (json.containsKey("visitTimeOnSiteDetails")) {
      visitTimeOnSiteDetails = new GoalVisitTimeOnSiteDetails.fromJson(json["visitTimeOnSiteDetails"]);
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for Goal */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (active != null) {
      output["active"] = active;
    }
    if (created != null) {
      output["created"] = created;
    }
    if (eventDetails != null) {
      output["eventDetails"] = eventDetails.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (internalWebPropertyId != null) {
      output["internalWebPropertyId"] = internalWebPropertyId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (urlDestinationDetails != null) {
      output["urlDestinationDetails"] = urlDestinationDetails.toJson();
    }
    if (value != null) {
      output["value"] = value;
    }
    if (visitNumPagesDetails != null) {
      output["visitNumPagesDetails"] = visitNumPagesDetails.toJson();
    }
    if (visitTimeOnSiteDetails != null) {
      output["visitTimeOnSiteDetails"] = visitTimeOnSiteDetails.toJson();
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of Goal */
  String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type VISIT_NUM_PAGES. */
class GoalVisitNumPagesDetails {

  /** Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or EQUAL. */
  String comparisonType;

  /** Value used for this comparison. */
  String comparisonValue;

  /** Create new GoalVisitNumPagesDetails from JSON data */
  GoalVisitNumPagesDetails.fromJson(Map json) {
    if (json.containsKey("comparisonType")) {
      comparisonType = json["comparisonType"];
    }
    if (json.containsKey("comparisonValue")) {
      comparisonValue = json["comparisonValue"];
    }
  }

  /** Create JSON Object for GoalVisitNumPagesDetails */
  Map toJson() {
    var output = new Map();

    if (comparisonType != null) {
      output["comparisonType"] = comparisonType;
    }
    if (comparisonValue != null) {
      output["comparisonValue"] = comparisonValue;
    }

    return output;
  }

  /** Return String representation of GoalVisitNumPagesDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type VISIT_TIME_ON_SITE. */
class GoalVisitTimeOnSiteDetails {

  /** Type of comparison. Possible values are LESS_THAN or GREATER_THAN. */
  String comparisonType;

  /** Value used for this comparison. */
  String comparisonValue;

  /** Create new GoalVisitTimeOnSiteDetails from JSON data */
  GoalVisitTimeOnSiteDetails.fromJson(Map json) {
    if (json.containsKey("comparisonType")) {
      comparisonType = json["comparisonType"];
    }
    if (json.containsKey("comparisonValue")) {
      comparisonValue = json["comparisonValue"];
    }
  }

  /** Create JSON Object for GoalVisitTimeOnSiteDetails */
  Map toJson() {
    var output = new Map();

    if (comparisonType != null) {
      output["comparisonType"] = comparisonType;
    }
    if (comparisonValue != null) {
      output["comparisonValue"] = comparisonValue;
    }

    return output;
  }

  /** Return String representation of GoalVisitTimeOnSiteDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Parent link for a goal. Points to the profile to which this goal belongs. */
class GoalParentLink {

  /** Link to the profile to which this goal belongs. */
  String href;

  /** Value is "analytics#profile". */
  String type;

  /** Create new GoalParentLink from JSON data */
  GoalParentLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GoalParentLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GoalParentLink */
  String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type URL_DESTINATION. */
class GoalUrlDestinationDetails {

  /** Determines if the goal URL must exactly match the capitalization of visited URLs. */
  bool caseSensitive;

  /** Determines if the first step in this goal is required. */
  bool firstStepRequired;

  /** Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX. */
  String matchType;

  /** List of steps configured for this goal funnel. */
  List<GoalUrlDestinationDetailsSteps> steps;

  /** URL for this goal. */
  String url;

  /** Create new GoalUrlDestinationDetails from JSON data */
  GoalUrlDestinationDetails.fromJson(Map json) {
    if (json.containsKey("caseSensitive")) {
      caseSensitive = json["caseSensitive"];
    }
    if (json.containsKey("firstStepRequired")) {
      firstStepRequired = json["firstStepRequired"];
    }
    if (json.containsKey("matchType")) {
      matchType = json["matchType"];
    }
    if (json.containsKey("steps")) {
      steps = [];
      json["steps"].forEach((item) {
        steps.add(new GoalUrlDestinationDetailsSteps.fromJson(item));
      });
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for GoalUrlDestinationDetails */
  Map toJson() {
    var output = new Map();

    if (caseSensitive != null) {
      output["caseSensitive"] = caseSensitive;
    }
    if (firstStepRequired != null) {
      output["firstStepRequired"] = firstStepRequired;
    }
    if (matchType != null) {
      output["matchType"] = matchType;
    }
    if (steps != null) {
      output["steps"] = new List();
      steps.forEach((item) {
        output["steps"].add(item.toJson());
      });
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of GoalUrlDestinationDetails */
  String toString() => JSON.stringify(this.toJson());

}

class GoalUrlDestinationDetailsSteps {

  /** Step name. */
  String name;

  /** Step number. */
  int number;

  /** URL for this step. */
  String url;

  /** Create new GoalUrlDestinationDetailsSteps from JSON data */
  GoalUrlDestinationDetailsSteps.fromJson(Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("number")) {
      number = json["number"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for GoalUrlDestinationDetailsSteps */
  Map toJson() {
    var output = new Map();

    if (name != null) {
      output["name"] = name;
    }
    if (number != null) {
      output["number"] = number;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of GoalUrlDestinationDetailsSteps */
  String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type EVENT. */
class GoalEventDetails {

  /** List of event conditions. */
  List<GoalEventDetailsEventConditions> eventConditions;

  /** Determines if the event value should be used as the value for this goal. */
  bool useEventValue;

  /** Create new GoalEventDetails from JSON data */
  GoalEventDetails.fromJson(Map json) {
    if (json.containsKey("eventConditions")) {
      eventConditions = [];
      json["eventConditions"].forEach((item) {
        eventConditions.add(new GoalEventDetailsEventConditions.fromJson(item));
      });
    }
    if (json.containsKey("useEventValue")) {
      useEventValue = json["useEventValue"];
    }
  }

  /** Create JSON Object for GoalEventDetails */
  Map toJson() {
    var output = new Map();

    if (eventConditions != null) {
      output["eventConditions"] = new List();
      eventConditions.forEach((item) {
        output["eventConditions"].add(item.toJson());
      });
    }
    if (useEventValue != null) {
      output["useEventValue"] = useEventValue;
    }

    return output;
  }

  /** Return String representation of GoalEventDetails */
  String toString() => JSON.stringify(this.toJson());

}

class GoalEventDetailsEventConditions {

  /** Type of comparison. Possible values are LESS_THAN, GREATER_THAN or EQUAL. */
  String comparisonType;

  /** Value used for this comparison. */
  String comparisonValue;

  /** Expression used for this match. */
  String expression;

  /** Type of the match to be performed. Possible values are REGEXP, BEGINS_WITH, or EXACT. */
  String matchType;

  /** Type of this event condition. Possible values are CATEGORY, ACTION, LABEL, or VALUE. */
  String type;

  /** Create new GoalEventDetailsEventConditions from JSON data */
  GoalEventDetailsEventConditions.fromJson(Map json) {
    if (json.containsKey("comparisonType")) {
      comparisonType = json["comparisonType"];
    }
    if (json.containsKey("comparisonValue")) {
      comparisonValue = json["comparisonValue"];
    }
    if (json.containsKey("expression")) {
      expression = json["expression"];
    }
    if (json.containsKey("matchType")) {
      matchType = json["matchType"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GoalEventDetailsEventConditions */
  Map toJson() {
    var output = new Map();

    if (comparisonType != null) {
      output["comparisonType"] = comparisonType;
    }
    if (comparisonValue != null) {
      output["comparisonValue"] = comparisonValue;
    }
    if (expression != null) {
      output["expression"] = expression;
    }
    if (matchType != null) {
      output["matchType"] = matchType;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GoalEventDetailsEventConditions */
  String toString() => JSON.stringify(this.toJson());

}

/** A goal collection lists Analytics goals to which the user has access. Each profile can have a set of goals. Each resource in the Goal collection corresponds to a single Analytics goal. */
class Goals {

  /** A list of goals. */
  List<Goal> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type. */
  String kind;

  /** Link to next page for this goal collection. */
  String nextLink;

  /** Link to previous page for this goal collection. */
  String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of resources in the result. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new Goals from JSON data */
  Goals.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Goal.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for Goals */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of Goals */
  String toString() => JSON.stringify(this.toJson());

}

/** Multi-Channel Funnels data for a given profile. */
class McfData {

  /** Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. */
  List<McfDataColumnHeaders> columnHeaders;

  /** Determines if the Analytics data contains sampled data. */
  bool containsSampledData;

  /** Unique ID for this data response. */
  String id;

  /** The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Resource type. */
  String kind;

  /** Link to next page for this Analytics data query. */
  String nextLink;

  /** Link to previous page for this Analytics data query. */
  String previousLink;

  /** Information for the profile, for which the Analytics data was requested. */
  McfDataProfileInfo profileInfo;

  /** Analytics data request query parameters. */
  McfDataQuery query;

  /** Link to this page. */
  String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  McfDataTotalsForAllResults totalsForAllResults;

  /** Create new McfData from JSON data */
  McfData.fromJson(Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = [];
      json["columnHeaders"].forEach((item) {
        columnHeaders.add(new McfDataColumnHeaders.fromJson(item));
      });
    }
    if (json.containsKey("containsSampledData")) {
      containsSampledData = json["containsSampledData"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("profileInfo")) {
      profileInfo = new McfDataProfileInfo.fromJson(json["profileInfo"]);
    }
    if (json.containsKey("query")) {
      query = new McfDataQuery.fromJson(json["query"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("totalsForAllResults")) {
      totalsForAllResults = new McfDataTotalsForAllResults.fromJson(json["totalsForAllResults"]);
    }
  }

  /** Create JSON Object for McfData */
  Map toJson() {
    var output = new Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = new List();
      columnHeaders.forEach((item) {
        output["columnHeaders"].add(item.toJson());
      });
    }
    if (containsSampledData != null) {
      output["containsSampledData"] = containsSampledData;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (profileInfo != null) {
      output["profileInfo"] = profileInfo.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (totalsForAllResults != null) {
      output["totalsForAllResults"] = totalsForAllResults.toJson();
    }

    return output;
  }

  /** Return String representation of McfData */
  String toString() => JSON.stringify(this.toJson());

}

class McfDataColumnHeaders {

  /** Column Type. Either DIMENSION or METRIC. */
  String columnType;

  /** Data type. Dimension and metric values data types such as INTEGER, DOUBLE, CURRENCY, MCF_SEQUENCE etc. */
  String dataType;

  /** Column name. */
  String name;

  /** Create new McfDataColumnHeaders from JSON data */
  McfDataColumnHeaders.fromJson(Map json) {
    if (json.containsKey("columnType")) {
      columnType = json["columnType"];
    }
    if (json.containsKey("dataType")) {
      dataType = json["dataType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for McfDataColumnHeaders */
  Map toJson() {
    var output = new Map();

    if (columnType != null) {
      output["columnType"] = columnType;
    }
    if (dataType != null) {
      output["dataType"] = dataType;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of McfDataColumnHeaders */
  String toString() => JSON.stringify(this.toJson());

}

/** Analytics data request query parameters. */
class McfDataQuery {

  /** List of analytics dimensions. */
  String dimensions;

  /** End date. */
  String end-date;

  /** Comma-separated list of dimension or metric filters. */
  String filters;

  /** Unique table ID. */
  String ids;

  /** Maximum results per page. */
  int max-results;

  /** List of analytics metrics. */
  List<String> metrics;

  /** Analytics advanced segment. */
  String segment;

  /** List of dimensions or metrics based on which Analytics data is sorted. */
  List<String> sort;

  /** Start date. */
  String start-date;

  /** Start index. */
  int start-index;

  /** Create new McfDataQuery from JSON data */
  McfDataQuery.fromJson(Map json) {
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"];
    }
    if (json.containsKey("end-date")) {
      end-date = json["end-date"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"];
    }
    if (json.containsKey("ids")) {
      ids = json["ids"];
    }
    if (json.containsKey("max-results")) {
      max-results = json["max-results"];
    }
    if (json.containsKey("metrics")) {
      metrics = [];
      json["metrics"].forEach((item) {
        metrics.add(item);
      });
    }
    if (json.containsKey("segment")) {
      segment = json["segment"];
    }
    if (json.containsKey("sort")) {
      sort = [];
      json["sort"].forEach((item) {
        sort.add(item);
      });
    }
    if (json.containsKey("start-date")) {
      start-date = json["start-date"];
    }
    if (json.containsKey("start-index")) {
      start-index = json["start-index"];
    }
  }

  /** Create JSON Object for McfDataQuery */
  Map toJson() {
    var output = new Map();

    if (dimensions != null) {
      output["dimensions"] = dimensions;
    }
    if (end-date != null) {
      output["end-date"] = end-date;
    }
    if (filters != null) {
      output["filters"] = filters;
    }
    if (ids != null) {
      output["ids"] = ids;
    }
    if (max-results != null) {
      output["max-results"] = max-results;
    }
    if (metrics != null) {
      output["metrics"] = new List();
      metrics.forEach((item) {
        output["metrics"].add(item);
      });
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (sort != null) {
      output["sort"] = new List();
      sort.forEach((item) {
        output["sort"].add(item);
      });
    }
    if (start-date != null) {
      output["start-date"] = start-date;
    }
    if (start-index != null) {
      output["start-index"] = start-index;
    }

    return output;
  }

  /** Return String representation of McfDataQuery */
  String toString() => JSON.stringify(this.toJson());

}

/** Information for the profile, for which the Analytics data was requested. */
class McfDataProfileInfo {

  /** Account ID to which this profile belongs. */
  String accountId;

  /** Internal ID for the web property to which this profile belongs. */
  String internalWebPropertyId;

  /** Profile ID. */
  String profileId;

  /** Profile name. */
  String profileName;

  /** Table ID for profile. */
  String tableId;

  /** Web Property ID to which this profile belongs. */
  String webPropertyId;

  /** Create new McfDataProfileInfo from JSON data */
  McfDataProfileInfo.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("internalWebPropertyId")) {
      internalWebPropertyId = json["internalWebPropertyId"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("profileName")) {
      profileName = json["profileName"];
    }
    if (json.containsKey("tableId")) {
      tableId = json["tableId"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for McfDataProfileInfo */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (internalWebPropertyId != null) {
      output["internalWebPropertyId"] = internalWebPropertyId;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (profileName != null) {
      output["profileName"] = profileName;
    }
    if (tableId != null) {
      output["tableId"] = tableId;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of McfDataProfileInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
class McfDataTotalsForAllResults {

  /** Create new McfDataTotalsForAllResults from JSON data */
  McfDataTotalsForAllResults.fromJson(Map json) {
  }

  /** Create JSON Object for McfDataTotalsForAllResults */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of McfDataTotalsForAllResults */
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics profile. */
class Profile {

  /** Account ID to which this profile belongs. */
  String accountId;

  /** Child link for this profile. Points to the list of goals for this profile. */
  ProfileChildLink childLink;

  /** Time this profile was created. */
  String created;

  /** The currency type associated with this profile. */
  String currency;

  /** Default page for this profile. */
  String defaultPage;

  /** E-commerce tracking parameter for this profile. */
  bool eCommerceTracking;

  /** The query parameters that are excluded from this profile. */
  String excludeQueryParameters;

  /** Profile ID. */
  String id;

  /** Internal ID for the web property to which this profile belongs. */
  String internalWebPropertyId;

  /** Resource type for Analytics profile. */
  String kind;

  /** Name of this profile. */
  String name;

  /** Parent link for this profile. Points to the web property to which this profile belongs. */
  ProfileParentLink parentLink;

  /** Link for this profile. */
  String selfLink;

  /** Site search category parameters for this profile. */
  String siteSearchCategoryParameters;

  /** The site search query parameters for this profile. */
  String siteSearchQueryParameters;

  /** Time zone for which this profile has been configured. */
  String timezone;

  /** Profile type. Supported types: WEB or APP. */
  String type;

  /** Time this profile was last modified. */
  String updated;

  /** Web property ID of the form UA-XXXXX-YY to which this profile belongs. */
  String webPropertyId;

  /** Website URL for this profile. */
  String websiteUrl;

  /** Create new Profile from JSON data */
  Profile.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("childLink")) {
      childLink = new ProfileChildLink.fromJson(json["childLink"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("defaultPage")) {
      defaultPage = json["defaultPage"];
    }
    if (json.containsKey("eCommerceTracking")) {
      eCommerceTracking = json["eCommerceTracking"];
    }
    if (json.containsKey("excludeQueryParameters")) {
      excludeQueryParameters = json["excludeQueryParameters"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("internalWebPropertyId")) {
      internalWebPropertyId = json["internalWebPropertyId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new ProfileParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("siteSearchCategoryParameters")) {
      siteSearchCategoryParameters = json["siteSearchCategoryParameters"];
    }
    if (json.containsKey("siteSearchQueryParameters")) {
      siteSearchQueryParameters = json["siteSearchQueryParameters"];
    }
    if (json.containsKey("timezone")) {
      timezone = json["timezone"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
    if (json.containsKey("websiteUrl")) {
      websiteUrl = json["websiteUrl"];
    }
  }

  /** Create JSON Object for Profile */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (childLink != null) {
      output["childLink"] = childLink.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (currency != null) {
      output["currency"] = currency;
    }
    if (defaultPage != null) {
      output["defaultPage"] = defaultPage;
    }
    if (eCommerceTracking != null) {
      output["eCommerceTracking"] = eCommerceTracking;
    }
    if (excludeQueryParameters != null) {
      output["excludeQueryParameters"] = excludeQueryParameters;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (internalWebPropertyId != null) {
      output["internalWebPropertyId"] = internalWebPropertyId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (siteSearchCategoryParameters != null) {
      output["siteSearchCategoryParameters"] = siteSearchCategoryParameters;
    }
    if (siteSearchQueryParameters != null) {
      output["siteSearchQueryParameters"] = siteSearchQueryParameters;
    }
    if (timezone != null) {
      output["timezone"] = timezone;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }
    if (websiteUrl != null) {
      output["websiteUrl"] = websiteUrl;
    }

    return output;
  }

  /** Return String representation of Profile */
  String toString() => JSON.stringify(this.toJson());

}

/** Child link for this profile. Points to the list of goals for this profile. */
class ProfileChildLink {

  /** Link to the list of goals for this profile. */
  String href;

  /** Value is "analytics#goals". */
  String type;

  /** Create new ProfileChildLink from JSON data */
  ProfileChildLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProfileChildLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProfileChildLink */
  String toString() => JSON.stringify(this.toJson());

}

/** Parent link for this profile. Points to the web property to which this profile belongs. */
class ProfileParentLink {

  /** Link to the web property to which this profile belongs. */
  String href;

  /** Value is "analytics#webproperty". */
  String type;

  /** Create new ProfileParentLink from JSON data */
  ProfileParentLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProfileParentLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProfileParentLink */
  String toString() => JSON.stringify(this.toJson());

}

/** A profile collection lists Analytics profiles to which the user has access. Each resource in the collection corresponds to a single Analytics profile. */
class Profiles {

  /** A list of profiles. */
  List<Profile> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type. */
  String kind;

  /** Link to next page for this profile collection. */
  String nextLink;

  /** Link to previous page for this profile collection. */
  String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new Profiles from JSON data */
  Profiles.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Profile.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for Profiles */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of Profiles */
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics advanced segment. */
class Segment {

  /** Time the advanced segment was created. */
  String created;

  /** Advanced segment definition. */
  String definition;

  /** Advanced segment ID. */
  String id;

  /** Resource type for Analytics advanced segment. */
  String kind;

  /** Advanced segment name. */
  String name;

  /** Segment ID. Can be used with the 'segment' parameter in Data Feed. */
  String segmentId;

  /** Link for this advanced segment. */
  String selfLink;

  /** Time the advanced segment was last modified. */
  String updated;

  /** Create new Segment from JSON data */
  Segment.fromJson(Map json) {
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("definition")) {
      definition = json["definition"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("segmentId")) {
      segmentId = json["segmentId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Segment */
  Map toJson() {
    var output = new Map();

    if (created != null) {
      output["created"] = created;
    }
    if (definition != null) {
      output["definition"] = definition;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (segmentId != null) {
      output["segmentId"] = segmentId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Segment */
  String toString() => JSON.stringify(this.toJson());

}

/** An advanced segment collection lists Analytics advanced segments that the user has access to. Each resource in the collection corresponds to a single Analytics advanced segment. */
class Segments {

  /** A list of advanced segments. */
  List<Segment> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type for advanced segments. */
  String kind;

  /** Link to next page for this advanced segment collection. */
  String nextLink;

  /** Link to previous page for this advanced segment collection. */
  String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new Segments from JSON data */
  Segments.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Segment.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for Segments */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of Segments */
  String toString() => JSON.stringify(this.toJson());

}

/** A web property collection lists Analytics web properties to which the user has access. Each resource in the collection corresponds to a single Analytics web property. */
class Webproperties {

  /** A list of web properties. */
  List<Webproperty> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  int itemsPerPage;

  /** Collection type. */
  String kind;

  /** Link to next page for this web property collection. */
  String nextLink;

  /** Link to previous page for this web property collection. */
  String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  int totalResults;

  /** Email ID of the authenticated user */
  String username;

  /** Create new Webproperties from JSON data */
  Webproperties.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Webproperty.fromJson(item));
      });
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("username")) {
      username = json["username"];
    }
  }

  /** Create JSON Object for Webproperties */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (username != null) {
      output["username"] = username;
    }

    return output;
  }

  /** Return String representation of Webproperties */
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics web property. */
class Webproperty {

  /** Account ID to which this web property belongs. */
  String accountId;

  /** Child link for this web property. Points to the list of profiles for this web property. */
  WebpropertyChildLink childLink;

  /** Time this web property was created. */
  String created;

  /** Web property ID of the form UA-XXXXX-YY. */
  String id;

  /** Internal ID for this web property. */
  String internalWebPropertyId;

  /** Resource type for Analytics WebProperty. */
  String kind;

  /** Name of this web property. */
  String name;

  /** Parent link for this web property. Points to the account to which this web property belongs. */
  WebpropertyParentLink parentLink;

  /** Link for this web property. */
  String selfLink;

  /** Time this web property was last modified. */
  String updated;

  /** Website url for this web property. */
  String websiteUrl;

  /** Create new Webproperty from JSON data */
  Webproperty.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("childLink")) {
      childLink = new WebpropertyChildLink.fromJson(json["childLink"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("internalWebPropertyId")) {
      internalWebPropertyId = json["internalWebPropertyId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new WebpropertyParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("websiteUrl")) {
      websiteUrl = json["websiteUrl"];
    }
  }

  /** Create JSON Object for Webproperty */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (childLink != null) {
      output["childLink"] = childLink.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (internalWebPropertyId != null) {
      output["internalWebPropertyId"] = internalWebPropertyId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (websiteUrl != null) {
      output["websiteUrl"] = websiteUrl;
    }

    return output;
  }

  /** Return String representation of Webproperty */
  String toString() => JSON.stringify(this.toJson());

}

/** Parent link for this web property. Points to the account to which this web property belongs. */
class WebpropertyParentLink {

  /** Link to the account for this web property. */
  String href;

  /** Type of the parent link. Its value is "analytics#account". */
  String type;

  /** Create new WebpropertyParentLink from JSON data */
  WebpropertyParentLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for WebpropertyParentLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of WebpropertyParentLink */
  String toString() => JSON.stringify(this.toJson());

}

/** Child link for this web property. Points to the list of profiles for this web property. */
class WebpropertyChildLink {

  /** Link to the list of profiles for this web property. */
  String href;

  /** Type of the parent link. Its value is "analytics#profiles". */
  String type;

  /** Create new WebpropertyChildLink from JSON data */
  WebpropertyChildLink.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for WebpropertyChildLink */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of WebpropertyChildLink */
  String toString() => JSON.stringify(this.toJson());

}

