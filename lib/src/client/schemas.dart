part of analytics_v3_api_client;

/** JSON template for Analytics account entry. */
class Account {

  /** Child link for an account entry. Points to the list of web properties for this account. */
  AccountChildLink childLink;

  /** Time the account was created. */
  core.String created;

  /** Account ID. */
  core.String id;

  /** Resource type for Analytics account. */
  core.String kind;

  /** Account name. */
  core.String name;

  /** Link for this account. */
  core.String selfLink;

  /** Time the account was last modified. */
  core.String updated;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Child link for an account entry. Points to the list of web properties for this account. */
class AccountChildLink {

  /** Link to the list of web properties for this account. */
  core.String href;

  /** Type of the child link. Its value is "analytics#webproperties". */
  core.String type;

  /** Create new AccountChildLink from JSON data */
  AccountChildLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AccountChildLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AccountChildLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An account collection provides a list of Analytics accounts to which a user has access. The account collection is the entry point to all management information. Each resource in the collection corresponds to a single Analytics account. */
class Accounts {

  /** A list of accounts. */
  core.List<Account> items;

  /** The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Next link for this account collection. */
  core.String nextLink;

  /** Previous link for this account collection. */
  core.String previousLink;

  /** The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Accounts from JSON data */
  Accounts.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics custom data source. */
class CustomDataSource {

  /** Account ID to which this custom data source belongs. */
  core.String accountId;

  /** Child link for this custom data source. Points to the list of daily uploads for this custom data source. */
  CustomDataSourceChildLink childLink;

  /** Time this custom data source was created. */
  core.String created;

  /** Description of custom data source. */
  core.String description;

  /** Custom data source ID. */
  core.String id;

  /** Resource type for Analytics custom data source. */
  core.String kind;

  /** Name of this custom data source. */
  core.String name;

  /** Parent link for this custom data source. Points to the web property to which this custom data source belongs. */
  CustomDataSourceParentLink parentLink;

  /** IDs of profiles linked to the custom data source. */
  core.List<core.String> profilesLinked;

  /** Link for this Analytics custom data source. */
  core.String selfLink;

  /** Time this custom data source was last modified. */
  core.String updated;

  /** Web property ID of the form UA-XXXXX-YY to which this custom data source belongs. */
  core.String webPropertyId;

  /** Create new CustomDataSource from JSON data */
  CustomDataSource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["profilesLinked"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Parent link for this custom data source. Points to the web property to which this custom data source belongs. */
class CustomDataSourceParentLink {

  /** Link to the web property to which this custom data source belongs. */
  core.String href;

  /** Value is "analytics#webproperty". */
  core.String type;

  /** Create new CustomDataSourceParentLink from JSON data */
  CustomDataSourceParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CustomDataSourceParentLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CustomDataSourceParentLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Child link for this custom data source. Points to the list of daily uploads for this custom data source. */
class CustomDataSourceChildLink {

  /** Link to the list of daily uploads for this custom data source. */
  core.String href;

  /** Value is "analytics#dailyUploads". */
  core.String type;

  /** Create new CustomDataSourceChildLink from JSON data */
  CustomDataSourceChildLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CustomDataSourceChildLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CustomDataSourceChildLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Lists Analytics custom data sources to which the user has access. Each resource in the collection corresponds to a single Analytics custom data source. */
class CustomDataSources {

  /** Collection of custom data sources. */
  core.List<CustomDataSource> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this custom data source collection. */
  core.String nextLink;

  /** Link to previous page for this custom data source collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new CustomDataSources from JSON data */
  CustomDataSources.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Metadata for daily upload entity. */
class DailyUpload {

  /** Account ID to which this daily upload belongs. */
  core.String accountId;

  /** Number of appends for this date. */
  core.int appendCount;

  /** Time this daily upload was created. */
  core.String createdTime;

  /** Custom data source ID to which this daily upload belongs. */
  core.String customDataSourceId;

  /** Date associated with daily upload. */
  core.String date;

  /** Resource type for Analytics daily upload. */
  core.String kind;

  /** Time this daily upload was last modified. */
  core.String modifiedTime;

  /** Parent link for a daily upload. Points to the custom data source to which this daily upload belongs. */
  DailyUploadParentLink parentLink;

  /** Change log for last 10 changes in chronological order. */
  core.List<DailyUploadRecentChanges> recentChanges;

  /** Link for this daily upload. */
  core.String selfLink;

  /** Web property ID of the form UA-XXXXX-YY to which this daily upload belongs. */
  core.String webPropertyId;

  /** Create new DailyUpload from JSON data */
  DailyUpload.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["recentChanges"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class DailyUploadRecentChanges {

  /** The type of change: APPEND, RESET, or DELETE. */
  core.String change;

  /** The time when the change occurred. */
  core.String time;

  /** Create new DailyUploadRecentChanges from JSON data */
  DailyUploadRecentChanges.fromJson(core.Map json) {
    if (json.containsKey("change")) {
      change = json["change"];
    }
    if (json.containsKey("time")) {
      time = json["time"];
    }
  }

  /** Create JSON Object for DailyUploadRecentChanges */
  core.Map toJson() {
    var output = new core.Map();

    if (change != null) {
      output["change"] = change;
    }
    if (time != null) {
      output["time"] = time;
    }

    return output;
  }

  /** Return String representation of DailyUploadRecentChanges */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Parent link for a daily upload. Points to the custom data source to which this daily upload belongs. */
class DailyUploadParentLink {

  /** Link to the custom data source to which this daily upload belongs. */
  core.String href;

  /** Value is "analytics#customDataSource". */
  core.String type;

  /** Create new DailyUploadParentLink from JSON data */
  DailyUploadParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for DailyUploadParentLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of DailyUploadParentLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Metadata returned for a successful append operation. */
class DailyUploadAppend {

  /** Account Id to which this daily upload append belongs. */
  core.String accountId;

  /** Append number. */
  core.int appendNumber;

  /** Custom data source Id to which this daily upload append belongs. */
  core.String customDataSourceId;

  /** Date associated with daily upload append. */
  core.String date;

  /** Resource type for Analytics daily upload append. */
  core.String kind;
  core.String nextAppendLink;

  /** Web property Id of the form UA-XXXXX-YY to which this daily upload append belongs. */
  core.String webPropertyId;

  /** Create new DailyUploadAppend from JSON data */
  DailyUploadAppend.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** A daily upload collection lists Analytics daily uploads to which the user has access. Each resource in the collection corresponds to a single Analytics daily upload. */
class DailyUploads {

  /** A collection of daily uploads. */
  core.List<DailyUpload> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. Value is analytics#dailyUploads. */
  core.String kind;

  /** Link to next page for this daily upload collection. */
  core.String nextLink;

  /** Link to previous page for this daily upload collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new DailyUploads from JSON data */
  DailyUploads.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Analytics experiment resource. */
class Experiment {

  /** Account ID to which this experiment belongs. This field is read-only. */
  core.String accountId;

  /** Time the experiment was created. This field is read-only. */
  core.String created;

  /** Notes about this experiment. */
  core.String description;

  /** The ending time of the experiment (the time the status changed from RUNNING to ENDED). This field is present only if the experiment has ended. This field is read-only. */
  core.String endTime;

  /** Experiment ID. Required for patch and update. Disallowed for create. */
  core.String id;

  /** Internal ID for the web property to which this experiment belongs. This field is read-only. */
  core.String internalWebPropertyId;

  /** Resource type for an Analytics experiment. This field is read-only. */
  core.String kind;

  /** Specifies the minimum length of the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED. */
  core.int minimumExperimentLengthInDays;

  /** Experiment name. This field may not be changed for an experiment whose status is ENDED. This field is required when creating an experiment. */
  core.String name;

  /** The metric that the experiment is optimizing. Valid values: "ga:goal(n)Completions", "ga:bounces", "ga:pageviews", "ga:timeOnSite", "ga:transactions", "ga:transactionRevenue". This field is required if status is "RUNNING" and servingFramework is one of "REDIRECT" or "API". */
  core.String objectiveMetric;

  /** Whether the objectiveMetric should be minimized or maximized. Possible values: "MAXIMUM", "MINIMUM". Optional--defaults to "MAXIMUM". Cannot be specified without objectiveMetric. Cannot be modified when status is "RUNNING" or "ENDED". */
  core.String optimizationType;

  /** Parent link for an experiment. Points to the profile to which this experiment belongs. */
  ExperimentParentLink parentLink;

  /** Profile ID to which this experiment belongs. This field is read-only. */
  core.String profileId;

  /** Why the experiment ended. Possible values: "STOPPED_BY_USER", "WINNER_FOUND", "EXPERIMENT_EXPIRED", "ENDED_WITH_NO_WINNER", "GOAL_OBJECTIVE_CHANGED". "ENDED_WITH_NO_WINNER" means that the experiment didn't expire but no winner was projected to be found. If the experiment status is changed via the API to ENDED this field is set to STOPPED_BY_USER. This field is read-only. */
  core.String reasonExperimentEnded;

  /** Boolean specifying whether variations URLS are rewritten to match those of the original. This field may not be changed for an experiments whose status is ENDED. */
  core.bool rewriteVariationUrlsAsOriginal;

  /** Link for this experiment. This field is read-only. */
  core.String selfLink;

  /** The snippet of code to include on the control page(s). This field is read-only. */
  core.String snippet;

  /** The starting time of the experiment (the time the status changed from READY_TO_RUN to RUNNING). This field is present only if the experiment has started. This field is read-only. */
  core.String startTime;

  /** Experiment status. Possible values: "DRAFT", "READY_TO_RUN", "RUNNING", "ENDED". Experiments can be created in the "DRAFT", "READY_TO_RUN" or "RUNNING" state. This field is required when creating an experiment. */
  core.String status;

  /** A floating-point number between 0 and 1. Specifies the fraction of the traffic that participates in the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED. */
  core.num trafficCoverage;

  /** Time the experiment was last modified. This field is read-only. */
  core.String updated;

  /** Array of variations. The first variation in the array is the original. The number of variations may not change once an experiment is in the RUNNING state. At least two variations are required before status can be set to RUNNING. */
  core.List<ExperimentVariations> variations;

  /** Web property ID to which this experiment belongs. The web property ID is of the form UA-XXXXX-YY. This field is read-only. */
  core.String webPropertyId;

  /** A floating-point number between 0 and 1. Specifies the necessary confidence level to choose a winner. This field may not be changed for an experiments whose status is ENDED. */
  core.num winnerConfidenceLevel;

  /** Boolean specifying whether a winner has been found for this experiment. This field is read-only. */
  core.bool winnerFound;

  /** Create new Experiment from JSON data */
  Experiment.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
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
    if (json.containsKey("minimumExperimentLengthInDays")) {
      minimumExperimentLengthInDays = json["minimumExperimentLengthInDays"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("objectiveMetric")) {
      objectiveMetric = json["objectiveMetric"];
    }
    if (json.containsKey("optimizationType")) {
      optimizationType = json["optimizationType"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new ExperimentParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("reasonExperimentEnded")) {
      reasonExperimentEnded = json["reasonExperimentEnded"];
    }
    if (json.containsKey("rewriteVariationUrlsAsOriginal")) {
      rewriteVariationUrlsAsOriginal = json["rewriteVariationUrlsAsOriginal"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("snippet")) {
      snippet = json["snippet"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("trafficCoverage")) {
      trafficCoverage = json["trafficCoverage"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("variations")) {
      variations = [];
      json["variations"].forEach((item) {
        variations.add(new ExperimentVariations.fromJson(item));
      });
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
    if (json.containsKey("winnerConfidenceLevel")) {
      winnerConfidenceLevel = json["winnerConfidenceLevel"];
    }
    if (json.containsKey("winnerFound")) {
      winnerFound = json["winnerFound"];
    }
  }

  /** Create JSON Object for Experiment */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (created != null) {
      output["created"] = created;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
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
    if (minimumExperimentLengthInDays != null) {
      output["minimumExperimentLengthInDays"] = minimumExperimentLengthInDays;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (objectiveMetric != null) {
      output["objectiveMetric"] = objectiveMetric;
    }
    if (optimizationType != null) {
      output["optimizationType"] = optimizationType;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (reasonExperimentEnded != null) {
      output["reasonExperimentEnded"] = reasonExperimentEnded;
    }
    if (rewriteVariationUrlsAsOriginal != null) {
      output["rewriteVariationUrlsAsOriginal"] = rewriteVariationUrlsAsOriginal;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (snippet != null) {
      output["snippet"] = snippet;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (trafficCoverage != null) {
      output["trafficCoverage"] = trafficCoverage;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (variations != null) {
      output["variations"] = new core.List();
      variations.forEach((item) {
        output["variations"].add(item.toJson());
      });
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }
    if (winnerConfidenceLevel != null) {
      output["winnerConfidenceLevel"] = winnerConfidenceLevel;
    }
    if (winnerFound != null) {
      output["winnerFound"] = winnerFound;
    }

    return output;
  }

  /** Return String representation of Experiment */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Parent link for an experiment. Points to the profile to which this experiment belongs. */
class ExperimentParentLink {

  /** Link to the profile to which this experiment belongs. This field is read-only. */
  core.String href;

  /** Value is "analytics#profile". This field is read-only. */
  core.String type;

  /** Create new ExperimentParentLink from JSON data */
  ExperimentParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ExperimentParentLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ExperimentParentLink */
  core.String toString() => JSON.stringify(this.toJson());

}

class ExperimentVariations {

  /** The name of the variation. This field is required when creating an experiment. This field may not be changed for an experiment whose status is ENDED. */
  core.String name;

  /** Status of the variation. Possible values: "ACTIVE", "INACTIVE". INACTIVE variations are not served. This field may not be changed for an experiment whose status is ENDED. */
  core.String status;

  /** The URL of the variation. This field may not be changed for an experiment whose status is RUNNING or ENDED. */
  core.String url;

  /** Weight that this variation should receive. Only present if the experiment is running. This field is read-only. */
  core.num weight;

  /** True if the experiment has ended and this variation performed (statistically) significantly better than the original. This field is read-only. */
  core.bool won;

  /** Create new ExperimentVariations from JSON data */
  ExperimentVariations.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("weight")) {
      weight = json["weight"];
    }
    if (json.containsKey("won")) {
      won = json["won"];
    }
  }

  /** Create JSON Object for ExperimentVariations */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (weight != null) {
      output["weight"] = weight;
    }
    if (won != null) {
      output["won"] = won;
    }

    return output;
  }

  /** Return String representation of ExperimentVariations */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An experiment collection lists Analytics experiments to which the user has access. Each profile can have a set of experiments. Each resource in the Experiment collection corresponds to a single Analytics experiment. */
class Experiments {

  /** A list of experiments. */
  core.List<Experiment> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this experiment collection. */
  core.String nextLink;

  /** Link to previous page for this experiment collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of resources in the result. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Experiments from JSON data */
  Experiments.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Experiment.fromJson(item));
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

  /** Create JSON Object for Experiments */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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

  /** Return String representation of Experiments */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Analytics data for a given profile. */
class GaData {

  /** Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. */
  core.List<GaDataColumnHeaders> columnHeaders;

  /** Determines if Analytics data contains samples. */
  core.bool containsSampledData;

  /** Unique ID for this data response. */
  core.String id;

  /** The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Resource type. */
  core.String kind;

  /** Link to next page for this Analytics data query. */
  core.String nextLink;

  /** Link to previous page for this Analytics data query. */
  core.String previousLink;

  /** Information for the profile, for which the Analytics data was requested. */
  GaDataProfileInfo profileInfo;

  /** Analytics data request query parameters. */
  GaDataQuery query;

  /** Link to this page. */
  core.String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  core.int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  GaDataTotalsForAllResults totalsForAllResults;

  /** Create new GaData from JSON data */
  GaData.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information for the profile, for which the Analytics data was requested. */
class GaDataProfileInfo {

  /** Account ID to which this profile belongs. */
  core.String accountId;

  /** Internal ID for the web property to which this profile belongs. */
  core.String internalWebPropertyId;

  /** Profile ID. */
  core.String profileId;

  /** Profile name. */
  core.String profileName;

  /** Table ID for profile. */
  core.String tableId;

  /** Web Property ID to which this profile belongs. */
  core.String webPropertyId;

  /** Create new GaDataProfileInfo from JSON data */
  GaDataProfileInfo.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
class GaDataTotalsForAllResults {

  /** Create new GaDataTotalsForAllResults from JSON data */
  GaDataTotalsForAllResults.fromJson(core.Map json) {
  }

  /** Create JSON Object for GaDataTotalsForAllResults */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of GaDataTotalsForAllResults */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Analytics data request query parameters. */
class GaDataQuery {

  /** List of analytics dimensions. */
  core.String dimensions;

  /** End date. */
  core.String end_date;

  /** Comma-separated list of dimension or metric filters. */
  core.String filters;

  /** Unique table ID. */
  core.String ids;

  /** Maximum results per page. */
  core.int max_results;

  /** List of analytics metrics. */
  core.List<core.String> metrics;

  /** Analytics advanced segment. */
  core.String segment;

  /** List of dimensions or metrics based on which Analytics data is sorted. */
  core.List<core.String> sort;

  /** Start date. */
  core.String start_date;

  /** Start index. */
  core.int start_index;

  /** Create new GaDataQuery from JSON data */
  GaDataQuery.fromJson(core.Map json) {
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"];
    }
    if (json.containsKey("end-date")) {
      end_date = json["end-date"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"];
    }
    if (json.containsKey("ids")) {
      ids = json["ids"];
    }
    if (json.containsKey("max-results")) {
      max_results = json["max-results"];
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
      start_date = json["start-date"];
    }
    if (json.containsKey("start-index")) {
      start_index = json["start-index"];
    }
  }

  /** Create JSON Object for GaDataQuery */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensions != null) {
      output["dimensions"] = dimensions;
    }
    if (end_date != null) {
      output["end-date"] = end_date;
    }
    if (filters != null) {
      output["filters"] = filters;
    }
    if (ids != null) {
      output["ids"] = ids;
    }
    if (max_results != null) {
      output["max-results"] = max_results;
    }
    if (metrics != null) {
      output["metrics"] = new core.List();
      metrics.forEach((item) {
        output["metrics"].add(item);
      });
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (sort != null) {
      output["sort"] = new core.List();
      sort.forEach((item) {
        output["sort"].add(item);
      });
    }
    if (start_date != null) {
      output["start-date"] = start_date;
    }
    if (start_index != null) {
      output["start-index"] = start_index;
    }

    return output;
  }

  /** Return String representation of GaDataQuery */
  core.String toString() => JSON.stringify(this.toJson());

}

class GaDataColumnHeaders {

  /** Column Type. Either DIMENSION or METRIC. */
  core.String columnType;

  /** Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc. */
  core.String dataType;

  /** Column name. */
  core.String name;

  /** Create new GaDataColumnHeaders from JSON data */
  GaDataColumnHeaders.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Analytics goal resource. */
class Goal {

  /** Account ID to which this goal belongs. */
  core.String accountId;

  /** Determines whether this goal is active. */
  core.bool active;

  /** Time this goal was created. */
  core.String created;

  /** Details for the goal of the type EVENT. */
  GoalEventDetails eventDetails;

  /** Goal ID. */
  core.String id;

  /** Internal ID for the web property to which this goal belongs. */
  core.String internalWebPropertyId;

  /** Resource type for an Analytics goal. */
  core.String kind;

  /** Goal name. */
  core.String name;

  /** Parent link for a goal. Points to the profile to which this goal belongs. */
  GoalParentLink parentLink;

  /** Profile ID to which this goal belongs. */
  core.String profileId;

  /** Link for this goal. */
  core.String selfLink;

  /** Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE, VISIT_NUM_PAGES, AND EVENT. */
  core.String type;

  /** Time this goal was last modified. */
  core.String updated;

  /** Details for the goal of the type URL_DESTINATION. */
  GoalUrlDestinationDetails urlDestinationDetails;

  /** Goal value. */
  core.num value;

  /** Details for the goal of the type VISIT_NUM_PAGES. */
  GoalVisitNumPagesDetails visitNumPagesDetails;

  /** Details for the goal of the type VISIT_TIME_ON_SITE. */
  GoalVisitTimeOnSiteDetails visitTimeOnSiteDetails;

  /** Web property ID to which this goal belongs. The web property ID is of the form UA-XXXXX-YY. */
  core.String webPropertyId;

  /** Create new Goal from JSON data */
  Goal.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type VISIT_NUM_PAGES. */
class GoalVisitNumPagesDetails {

  /** Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or EQUAL. */
  core.String comparisonType;

  /** Value used for this comparison. */
  core.int comparisonValue;

  /** Create new GoalVisitNumPagesDetails from JSON data */
  GoalVisitNumPagesDetails.fromJson(core.Map json) {
    if (json.containsKey("comparisonType")) {
      comparisonType = json["comparisonType"];
    }
    if (json.containsKey("comparisonValue")) {
      if(json["comparisonValue"] is core.String){
        comparisonValue = core.int.parse(json["comparisonValue"]);
      }else{
        comparisonValue = json["comparisonValue"];
      }
    }
  }

  /** Create JSON Object for GoalVisitNumPagesDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (comparisonType != null) {
      output["comparisonType"] = comparisonType;
    }
    if (comparisonValue != null) {
      output["comparisonValue"] = comparisonValue;
    }

    return output;
  }

  /** Return String representation of GoalVisitNumPagesDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type VISIT_TIME_ON_SITE. */
class GoalVisitTimeOnSiteDetails {

  /** Type of comparison. Possible values are LESS_THAN or GREATER_THAN. */
  core.String comparisonType;

  /** Value used for this comparison. */
  core.int comparisonValue;

  /** Create new GoalVisitTimeOnSiteDetails from JSON data */
  GoalVisitTimeOnSiteDetails.fromJson(core.Map json) {
    if (json.containsKey("comparisonType")) {
      comparisonType = json["comparisonType"];
    }
    if (json.containsKey("comparisonValue")) {
      if(json["comparisonValue"] is core.String){
        comparisonValue = core.int.parse(json["comparisonValue"]);
      }else{
        comparisonValue = json["comparisonValue"];
      }
    }
  }

  /** Create JSON Object for GoalVisitTimeOnSiteDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (comparisonType != null) {
      output["comparisonType"] = comparisonType;
    }
    if (comparisonValue != null) {
      output["comparisonValue"] = comparisonValue;
    }

    return output;
  }

  /** Return String representation of GoalVisitTimeOnSiteDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Parent link for a goal. Points to the profile to which this goal belongs. */
class GoalParentLink {

  /** Link to the profile to which this goal belongs. */
  core.String href;

  /** Value is "analytics#profile". */
  core.String type;

  /** Create new GoalParentLink from JSON data */
  GoalParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GoalParentLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GoalParentLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type URL_DESTINATION. */
class GoalUrlDestinationDetails {

  /** Determines if the goal URL must exactly match the capitalization of visited URLs. */
  core.bool caseSensitive;

  /** Determines if the first step in this goal is required. */
  core.bool firstStepRequired;

  /** Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX. */
  core.String matchType;

  /** List of steps configured for this goal funnel. */
  core.List<GoalUrlDestinationDetailsSteps> steps;

  /** URL for this goal. */
  core.String url;

  /** Create new GoalUrlDestinationDetails from JSON data */
  GoalUrlDestinationDetails.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["steps"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class GoalUrlDestinationDetailsSteps {

  /** Step name. */
  core.String name;

  /** Step number. */
  core.int number;

  /** URL for this step. */
  core.String url;

  /** Create new GoalUrlDestinationDetailsSteps from JSON data */
  GoalUrlDestinationDetailsSteps.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details for the goal of the type EVENT. */
class GoalEventDetails {

  /** List of event conditions. */
  core.List<GoalEventDetailsEventConditions> eventConditions;

  /** Determines if the event value should be used as the value for this goal. */
  core.bool useEventValue;

  /** Create new GoalEventDetails from JSON data */
  GoalEventDetails.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (eventConditions != null) {
      output["eventConditions"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class GoalEventDetailsEventConditions {

  /** Type of comparison. Possible values are LESS_THAN, GREATER_THAN or EQUAL. */
  core.String comparisonType;

  /** Value used for this comparison. */
  core.int comparisonValue;

  /** Expression used for this match. */
  core.String expression;

  /** Type of the match to be performed. Possible values are REGEXP, BEGINS_WITH, or EXACT. */
  core.String matchType;

  /** Type of this event condition. Possible values are CATEGORY, ACTION, LABEL, or VALUE. */
  core.String type;

  /** Create new GoalEventDetailsEventConditions from JSON data */
  GoalEventDetailsEventConditions.fromJson(core.Map json) {
    if (json.containsKey("comparisonType")) {
      comparisonType = json["comparisonType"];
    }
    if (json.containsKey("comparisonValue")) {
      if(json["comparisonValue"] is core.String){
        comparisonValue = core.int.parse(json["comparisonValue"]);
      }else{
        comparisonValue = json["comparisonValue"];
      }
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** A goal collection lists Analytics goals to which the user has access. Each profile can have a set of goals. Each resource in the Goal collection corresponds to a single Analytics goal. */
class Goals {

  /** A list of goals. */
  core.List<Goal> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this goal collection. */
  core.String nextLink;

  /** Link to previous page for this goal collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of resources in the result. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Goals from JSON data */
  Goals.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Multi-Channel Funnels data for a given profile. */
class McfData {

  /** Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. */
  core.List<McfDataColumnHeaders> columnHeaders;

  /** Determines if the Analytics data contains sampled data. */
  core.bool containsSampledData;

  /** Unique ID for this data response. */
  core.String id;

  /** The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Resource type. */
  core.String kind;

  /** Link to next page for this Analytics data query. */
  core.String nextLink;

  /** Link to previous page for this Analytics data query. */
  core.String previousLink;

  /** Information for the profile, for which the Analytics data was requested. */
  McfDataProfileInfo profileInfo;

  /** Analytics data request query parameters. */
  McfDataQuery query;

  /** Link to this page. */
  core.String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  core.int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  McfDataTotalsForAllResults totalsForAllResults;

  /** Create new McfData from JSON data */
  McfData.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class McfDataColumnHeaders {

  /** Column Type. Either DIMENSION or METRIC. */
  core.String columnType;

  /** Data type. Dimension and metric values data types such as INTEGER, DOUBLE, CURRENCY, MCF_SEQUENCE etc. */
  core.String dataType;

  /** Column name. */
  core.String name;

  /** Create new McfDataColumnHeaders from JSON data */
  McfDataColumnHeaders.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Analytics data request query parameters. */
class McfDataQuery {

  /** List of analytics dimensions. */
  core.String dimensions;

  /** End date. */
  core.String end_date;

  /** Comma-separated list of dimension or metric filters. */
  core.String filters;

  /** Unique table ID. */
  core.String ids;

  /** Maximum results per page. */
  core.int max_results;

  /** List of analytics metrics. */
  core.List<core.String> metrics;

  /** Analytics advanced segment. */
  core.String segment;

  /** List of dimensions or metrics based on which Analytics data is sorted. */
  core.List<core.String> sort;

  /** Start date. */
  core.String start_date;

  /** Start index. */
  core.int start_index;

  /** Create new McfDataQuery from JSON data */
  McfDataQuery.fromJson(core.Map json) {
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"];
    }
    if (json.containsKey("end-date")) {
      end_date = json["end-date"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"];
    }
    if (json.containsKey("ids")) {
      ids = json["ids"];
    }
    if (json.containsKey("max-results")) {
      max_results = json["max-results"];
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
      start_date = json["start-date"];
    }
    if (json.containsKey("start-index")) {
      start_index = json["start-index"];
    }
  }

  /** Create JSON Object for McfDataQuery */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensions != null) {
      output["dimensions"] = dimensions;
    }
    if (end_date != null) {
      output["end-date"] = end_date;
    }
    if (filters != null) {
      output["filters"] = filters;
    }
    if (ids != null) {
      output["ids"] = ids;
    }
    if (max_results != null) {
      output["max-results"] = max_results;
    }
    if (metrics != null) {
      output["metrics"] = new core.List();
      metrics.forEach((item) {
        output["metrics"].add(item);
      });
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (sort != null) {
      output["sort"] = new core.List();
      sort.forEach((item) {
        output["sort"].add(item);
      });
    }
    if (start_date != null) {
      output["start-date"] = start_date;
    }
    if (start_index != null) {
      output["start-index"] = start_index;
    }

    return output;
  }

  /** Return String representation of McfDataQuery */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information for the profile, for which the Analytics data was requested. */
class McfDataProfileInfo {

  /** Account ID to which this profile belongs. */
  core.String accountId;

  /** Internal ID for the web property to which this profile belongs. */
  core.String internalWebPropertyId;

  /** Profile ID. */
  core.String profileId;

  /** Profile name. */
  core.String profileName;

  /** Table ID for profile. */
  core.String tableId;

  /** Web Property ID to which this profile belongs. */
  core.String webPropertyId;

  /** Create new McfDataProfileInfo from JSON data */
  McfDataProfileInfo.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
class McfDataTotalsForAllResults {

  /** Create new McfDataTotalsForAllResults from JSON data */
  McfDataTotalsForAllResults.fromJson(core.Map json) {
  }

  /** Create JSON Object for McfDataTotalsForAllResults */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of McfDataTotalsForAllResults */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics profile. */
class Profile {

  /** Account ID to which this profile belongs. */
  core.String accountId;

  /** Child link for this profile. Points to the list of goals for this profile. */
  ProfileChildLink childLink;

  /** Time this profile was created. */
  core.String created;

  /** The currency type associated with this profile. */
  core.String currency;

  /** Default page for this profile. */
  core.String defaultPage;

  /** Indicates whether ecommerce tracking is enabled for this profile. */
  core.bool eCommerceTracking;

  /** The query parameters that are excluded from this profile. */
  core.String excludeQueryParameters;

  /** Profile ID. */
  core.String id;

  /** Internal ID for the web property to which this profile belongs. */
  core.String internalWebPropertyId;

  /** Resource type for Analytics profile. */
  core.String kind;

  /** Name of this profile. */
  core.String name;

  /** Parent link for this profile. Points to the web property to which this profile belongs. */
  ProfileParentLink parentLink;

  /** Link for this profile. */
  core.String selfLink;

  /** Site search category parameters for this profile. */
  core.String siteSearchCategoryParameters;

  /** The site search query parameters for this profile. */
  core.String siteSearchQueryParameters;

  /** Time zone for which this profile has been configured. */
  core.String timezone;

  /** Profile type. Supported types: WEB or APP. */
  core.String type;

  /** Time this profile was last modified. */
  core.String updated;

  /** Web property ID of the form UA-XXXXX-YY to which this profile belongs. */
  core.String webPropertyId;

  /** Website URL for this profile. */
  core.String websiteUrl;

  /** Create new Profile from JSON data */
  Profile.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Child link for this profile. Points to the list of goals for this profile. */
class ProfileChildLink {

  /** Link to the list of goals for this profile. */
  core.String href;

  /** Value is "analytics#goals". */
  core.String type;

  /** Create new ProfileChildLink from JSON data */
  ProfileChildLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProfileChildLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProfileChildLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Parent link for this profile. Points to the web property to which this profile belongs. */
class ProfileParentLink {

  /** Link to the web property to which this profile belongs. */
  core.String href;

  /** Value is "analytics#webproperty". */
  core.String type;

  /** Create new ProfileParentLink from JSON data */
  ProfileParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProfileParentLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProfileParentLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A profile collection lists Analytics profiles to which the user has access. Each resource in the collection corresponds to a single Analytics profile. */
class Profiles {

  /** A list of profiles. */
  core.List<Profile> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this profile collection. */
  core.String nextLink;

  /** Link to previous page for this profile collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Profiles from JSON data */
  Profiles.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics advanced segment. */
class Segment {

  /** Time the advanced segment was created. */
  core.String created;

  /** Advanced segment definition. */
  core.String definition;

  /** Advanced segment ID. */
  core.String id;

  /** Resource type for Analytics advanced segment. */
  core.String kind;

  /** Advanced segment name. */
  core.String name;

  /** Segment ID. Can be used with the 'segment' parameter in Data Feed. */
  core.String segmentId;

  /** Link for this advanced segment. */
  core.String selfLink;

  /** Time the advanced segment was last modified. */
  core.String updated;

  /** Create new Segment from JSON data */
  Segment.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** An advanced segment collection lists Analytics advanced segments that the user has access to. Each resource in the collection corresponds to a single Analytics advanced segment. */
class Segments {

  /** A list of advanced segments. */
  core.List<Segment> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type for advanced segments. */
  core.String kind;

  /** Link to next page for this advanced segment collection. */
  core.String nextLink;

  /** Link to previous page for this advanced segment collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Segments from JSON data */
  Segments.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** A web property collection lists Analytics web properties to which the user has access. Each resource in the collection corresponds to a single Analytics web property. */
class Webproperties {

  /** A list of web properties. */
  core.List<Webproperty> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this web property collection. */
  core.String nextLink;

  /** Link to previous page for this web property collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Webproperties from JSON data */
  Webproperties.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an Analytics web property. */
class Webproperty {

  /** Account ID to which this web property belongs. */
  core.String accountId;

  /** Child link for this web property. Points to the list of profiles for this web property. */
  WebpropertyChildLink childLink;

  /** Time this web property was created. */
  core.String created;

  /** Web property ID of the form UA-XXXXX-YY. */
  core.String id;

  /** The industry vertical/category selected for this web property. */
  core.String industryVertical;

  /** Internal ID for this web property. */
  core.String internalWebPropertyId;

  /** Resource type for Analytics WebProperty. */
  core.String kind;

  /** Level for this web property. Possible values are STANDARD or PREMIUM. */
  core.String level;

  /** Name of this web property. */
  core.String name;

  /** Parent link for this web property. Points to the account to which this web property belongs. */
  WebpropertyParentLink parentLink;

  /** Profile count for this web property. */
  core.int profileCount;

  /** Link for this web property. */
  core.String selfLink;

  /** Time this web property was last modified. */
  core.String updated;

  /** Website url for this web property. */
  core.String websiteUrl;

  /** Create new Webproperty from JSON data */
  Webproperty.fromJson(core.Map json) {
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
    if (json.containsKey("industryVertical")) {
      industryVertical = json["industryVertical"];
    }
    if (json.containsKey("internalWebPropertyId")) {
      internalWebPropertyId = json["internalWebPropertyId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("level")) {
      level = json["level"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new WebpropertyParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("profileCount")) {
      profileCount = json["profileCount"];
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
  core.Map toJson() {
    var output = new core.Map();

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
    if (industryVertical != null) {
      output["industryVertical"] = industryVertical;
    }
    if (internalWebPropertyId != null) {
      output["internalWebPropertyId"] = internalWebPropertyId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (level != null) {
      output["level"] = level;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (profileCount != null) {
      output["profileCount"] = profileCount;
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Parent link for this web property. Points to the account to which this web property belongs. */
class WebpropertyParentLink {

  /** Link to the account for this web property. */
  core.String href;

  /** Type of the parent link. Its value is "analytics#account". */
  core.String type;

  /** Create new WebpropertyParentLink from JSON data */
  WebpropertyParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for WebpropertyParentLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of WebpropertyParentLink */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Child link for this web property. Points to the list of profiles for this web property. */
class WebpropertyChildLink {

  /** Link to the list of profiles for this web property. */
  core.String href;

  /** Type of the parent link. Its value is "analytics#profiles". */
  core.String type;

  /** Create new WebpropertyChildLink from JSON data */
  WebpropertyChildLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for WebpropertyChildLink */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of WebpropertyChildLink */
  core.String toString() => JSON.stringify(this.toJson());

}

