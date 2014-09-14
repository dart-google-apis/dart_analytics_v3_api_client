part of analytics_v3_api;

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

  /** Permissions the user has for this account. */
  AccountPermissions permissions;

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
    if (json.containsKey("permissions")) {
      permissions = new AccountPermissions.fromJson(json["permissions"]);
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
    if (permissions != null) {
      output["permissions"] = permissions.toJson();
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Permissions the user has for this account. */
class AccountPermissions {

  /** All the permissions that the user has for this account. These include any implied permissions (e.g., EDIT implies VIEW). */
  core.List<core.String> effective;

  /** Create new AccountPermissions from JSON data */
  AccountPermissions.fromJson(core.Map json) {
    if (json.containsKey("effective")) {
      effective = json["effective"].toList();
    }
  }

  /** Create JSON Object for AccountPermissions */
  core.Map toJson() {
    var output = new core.Map();

    if (effective != null) {
      output["effective"] = effective.toList();
    }

    return output;
  }

  /** Return String representation of AccountPermissions */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a linked account. */
class AccountRef {

  /** Link for this account. */
  core.String href;

  /** Account ID. */
  core.String id;

  /** Analytics account reference. */
  core.String kind;

  /** Account name. */
  core.String name;

  /** Create new AccountRef from JSON data */
  AccountRef.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
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
  }

  /** Create JSON Object for AccountRef */
  core.Map toJson() {
    var output = new core.Map();

    if (href != null) {
      output["href"] = href;
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

    return output;
  }

  /** Return String representation of AccountRef */
  core.String toString() => JSON.encode(this.toJson());

}

/** An AccountSummary collection lists a summary of accounts, properties and views (profiles) to which the user has access. Each resource in the collection corresponds to a single AccountSummary. */
class AccountSummaries {

  /** A list of AccountSummaries. */
  core.List<AccountSummary> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this AccountSummary collection. */
  core.String nextLink;

  /** Link to previous page for this AccountSummary collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new AccountSummaries from JSON data */
  AccountSummaries.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new AccountSummary.fromJson(itemsItem)).toList();
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

  /** Create JSON Object for AccountSummaries */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

  /** Return String representation of AccountSummaries */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics AccountSummary. An AccountSummary is a lightweight tree comprised of properties/profiles. */
class AccountSummary {

  /** Account ID. */
  core.String id;

  /** Resource type for Analytics AccountSummary. */
  core.String kind;

  /** Account name. */
  core.String name;

  /** List of web properties under this account. */
  core.List<WebPropertySummary> webProperties;

  /** Create new AccountSummary from JSON data */
  AccountSummary.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("webProperties")) {
      webProperties = json["webProperties"].map((webPropertiesItem) => new WebPropertySummary.fromJson(webPropertiesItem)).toList();
    }
  }

  /** Create JSON Object for AccountSummary */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (webProperties != null) {
      output["webProperties"] = webProperties.map((webPropertiesItem) => webPropertiesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AccountSummary */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics account ticket. The account ticket consists of the ticket ID and the basic information for the account, property and profile. */
class AccountTicket {

  /** Account for this ticket. */
  Account account;

  /** Account ticket ID used to access the account ticket. */
  core.String id;

  /** Resource type for account ticket. */
  core.String kind;

  /** View (Profile) for the account. */
  Profile profile;

  /** Redirect URI where the user will be sent after accepting Terms of Service. Must be configured in APIs console as a callback URL. */
  core.String redirectUri;

  /** Web property for the account. */
  Webproperty webproperty;

  /** Create new AccountTicket from JSON data */
  AccountTicket.fromJson(core.Map json) {
    if (json.containsKey("account")) {
      account = new Account.fromJson(json["account"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profile")) {
      profile = new Profile.fromJson(json["profile"]);
    }
    if (json.containsKey("redirectUri")) {
      redirectUri = json["redirectUri"];
    }
    if (json.containsKey("webproperty")) {
      webproperty = new Webproperty.fromJson(json["webproperty"]);
    }
  }

  /** Create JSON Object for AccountTicket */
  core.Map toJson() {
    var output = new core.Map();

    if (account != null) {
      output["account"] = account.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (profile != null) {
      output["profile"] = profile.toJson();
    }
    if (redirectUri != null) {
      output["redirectUri"] = redirectUri;
    }
    if (webproperty != null) {
      output["webproperty"] = webproperty.toJson();
    }

    return output;
  }

  /** Return String representation of AccountTicket */
  core.String toString() => JSON.encode(this.toJson());

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
      items = json["items"].map((itemsItem) => new Account.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an AdWords account. */
class AdWordsAccount {

  /** True if auto-tagging is enabled on the AdWords account. Read-only after the insert operation. */
  core.bool autoTaggingEnabled;

  /** Customer ID. This field is required when creating an AdWords link. */
  core.String customerId;

  /** Resource type for AdWords account. */
  core.String kind;

  /** Create new AdWordsAccount from JSON data */
  AdWordsAccount.fromJson(core.Map json) {
    if (json.containsKey("autoTaggingEnabled")) {
      autoTaggingEnabled = json["autoTaggingEnabled"];
    }
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AdWordsAccount */
  core.Map toJson() {
    var output = new core.Map();

    if (autoTaggingEnabled != null) {
      output["autoTaggingEnabled"] = autoTaggingEnabled;
    }
    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AdWordsAccount */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request template for the delete upload data request. */
class AnalyticsDataimportDeleteUploadDataRequest {

  /** A list of upload UIDs. */
  core.List<core.String> customDataImportUids;

  /** Create new AnalyticsDataimportDeleteUploadDataRequest from JSON data */
  AnalyticsDataimportDeleteUploadDataRequest.fromJson(core.Map json) {
    if (json.containsKey("customDataImportUids")) {
      customDataImportUids = json["customDataImportUids"].toList();
    }
  }

  /** Create JSON Object for AnalyticsDataimportDeleteUploadDataRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (customDataImportUids != null) {
      output["customDataImportUids"] = customDataImportUids.toList();
    }

    return output;
  }

  /** Return String representation of AnalyticsDataimportDeleteUploadDataRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a metadata column. */
class Column {

  /** Map of attribute name and value for this column. */
  core.Map<core.String, core.String> attributes;

  /** Column id. */
  core.String id;

  /** Resource type for Analytics column. */
  core.String kind;

  /** Create new Column from JSON data */
  Column.fromJson(core.Map json) {
    if (json.containsKey("attributes")) {
      attributes = _mapMap(json["attributes"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Column */
  core.Map toJson() {
    var output = new core.Map();

    if (attributes != null) {
      output["attributes"] = _mapMap(attributes);
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Column */
  core.String toString() => JSON.encode(this.toJson());

}

/** Lists columns (dimensions and metrics) for a particular report type. */
class Columns {

  /** List of attributes names returned by columns. */
  core.List<core.String> attributeNames;

  /** Etag of collection. This etag can be compared with the last response etag to check if response has changed. */
  core.String etag;

  /** List of columns for a report type. */
  core.List<Column> items;

  /** Collection type. */
  core.String kind;

  /** Total number of columns returned in the response. */
  core.int totalResults;

  /** Create new Columns from JSON data */
  Columns.fromJson(core.Map json) {
    if (json.containsKey("attributeNames")) {
      attributeNames = json["attributeNames"].toList();
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Column.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
  }

  /** Create JSON Object for Columns */
  core.Map toJson() {
    var output = new core.Map();

    if (attributeNames != null) {
      output["attributeNames"] = attributeNames.toList();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }

    return output;
  }

  /** Return String representation of Columns */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics custom data source. */
class CustomDataSource {

  /** Account ID to which this custom data source belongs. */
  core.String accountId;

  CustomDataSourceChildLink childLink;

  /** Time this custom data source was created. */
  core.String created;

  /** Description of custom data source. */
  core.String description;

  /** Custom data source ID. */
  core.String id;

  core.String importBehavior;

  /** Resource type for Analytics custom data source. */
  core.String kind;

  /** Name of this custom data source. */
  core.String name;

  /** Parent link for this custom data source. Points to the web property to which this custom data source belongs. */
  CustomDataSourceParentLink parentLink;

  /** IDs of views (profiles) linked to the custom data source. */
  core.List<core.String> profilesLinked;

  /** Link for this Analytics custom data source. */
  core.String selfLink;

  /** Type of the custom data source. */
  core.String type;

  /** Time this custom data source was last modified. */
  core.String updated;

  core.String uploadType;

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
    if (json.containsKey("importBehavior")) {
      importBehavior = json["importBehavior"];
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
      profilesLinked = json["profilesLinked"].toList();
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
    if (json.containsKey("uploadType")) {
      uploadType = json["uploadType"];
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
    if (importBehavior != null) {
      output["importBehavior"] = importBehavior;
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
      output["profilesLinked"] = profilesLinked.toList();
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
    if (uploadType != null) {
      output["uploadType"] = uploadType;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of CustomDataSource */
  core.String toString() => JSON.encode(this.toJson());

}

class CustomDataSourceChildLink {

  /** Link to the list of daily uploads for this custom data source. Link to the list of uploads for this custom data source. */
  core.String href;

  /** Value is "analytics#dailyUploads". Value is "analytics#uploads". */
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

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
      items = json["items"].map((itemsItem) => new CustomDataSource.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

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
      recentChanges = json["recentChanges"].map((recentChangesItem) => new DailyUploadRecentChanges.fromJson(recentChangesItem)).toList();
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
      output["recentChanges"] = recentChanges.map((recentChangesItem) => recentChangesItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

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
      items = json["items"].map((itemsItem) => new DailyUpload.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Analytics Entity AdWords Link. */
class EntityAdWordsLink {

  /** A list of AdWords client accounts. These cannot be MCC accounts. This field is required when creating an AdWords link. It cannot be empty. */
  core.List<AdWordsAccount> adWordsAccounts;

  /** Web property being linked. */
  EntityAdWordsLinkEntity entity;

  /** Entity AdWords link ID */
  core.String id;

  /** Resource type for entity AdWords link. */
  core.String kind;

  /** Name of the link. This field is required when creating an AdWords link. */
  core.String name;

  /** IDs of linked Views (Profiles) represented as strings. */
  core.List<core.String> profileIds;

  /** URL link for this Google Analytics - Google AdWords link. */
  core.String selfLink;

  /** Create new EntityAdWordsLink from JSON data */
  EntityAdWordsLink.fromJson(core.Map json) {
    if (json.containsKey("adWordsAccounts")) {
      adWordsAccounts = json["adWordsAccounts"].map((adWordsAccountsItem) => new AdWordsAccount.fromJson(adWordsAccountsItem)).toList();
    }
    if (json.containsKey("entity")) {
      entity = new EntityAdWordsLinkEntity.fromJson(json["entity"]);
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
    if (json.containsKey("profileIds")) {
      profileIds = json["profileIds"].toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for EntityAdWordsLink */
  core.Map toJson() {
    var output = new core.Map();

    if (adWordsAccounts != null) {
      output["adWordsAccounts"] = adWordsAccounts.map((adWordsAccountsItem) => adWordsAccountsItem.toJson()).toList();
    }
    if (entity != null) {
      output["entity"] = entity.toJson();
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
    if (profileIds != null) {
      output["profileIds"] = profileIds.toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of EntityAdWordsLink */
  core.String toString() => JSON.encode(this.toJson());

}

/** Web property being linked. */
class EntityAdWordsLinkEntity {

  WebPropertyRef webPropertyRef;

  /** Create new EntityAdWordsLinkEntity from JSON data */
  EntityAdWordsLinkEntity.fromJson(core.Map json) {
    if (json.containsKey("webPropertyRef")) {
      webPropertyRef = new WebPropertyRef.fromJson(json["webPropertyRef"]);
    }
  }

  /** Create JSON Object for EntityAdWordsLinkEntity */
  core.Map toJson() {
    var output = new core.Map();

    if (webPropertyRef != null) {
      output["webPropertyRef"] = webPropertyRef.toJson();
    }

    return output;
  }

  /** Return String representation of EntityAdWordsLinkEntity */
  core.String toString() => JSON.encode(this.toJson());

}

/** An entity AdWords link collection provides a list of GA-AdWords links Each resource in this collection corresponds to a single link. */
class EntityAdWordsLinks {

  /** A list of entity AdWords links. */
  core.List<EntityAdWordsLink> items;

  /** The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Next link for this AdWords link collection. */
  core.String nextLink;

  /** Previous link for this AdWords link collection. */
  core.String previousLink;

  /** The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Create new EntityAdWordsLinks from JSON data */
  EntityAdWordsLinks.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new EntityAdWordsLink.fromJson(itemsItem)).toList();
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
  }

  /** Create JSON Object for EntityAdWordsLinks */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

    return output;
  }

  /** Return String representation of EntityAdWordsLinks */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics Entity-User Link. Returns permissions that a user has for an entity. */
class EntityUserLink {

  /** Entity for this link. It can be an account, a web property, or a view (profile). */
  EntityUserLinkEntity entity;

  /** Entity user link ID */
  core.String id;

  /** Resource type for entity user link. */
  core.String kind;

  /** Permissions the user has for this entity. */
  EntityUserLinkPermissions permissions;

  /** Self link for this resource. */
  core.String selfLink;

  /** User reference. */
  UserRef userRef;

  /** Create new EntityUserLink from JSON data */
  EntityUserLink.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = new EntityUserLinkEntity.fromJson(json["entity"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("permissions")) {
      permissions = new EntityUserLinkPermissions.fromJson(json["permissions"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("userRef")) {
      userRef = new UserRef.fromJson(json["userRef"]);
    }
  }

  /** Create JSON Object for EntityUserLink */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (permissions != null) {
      output["permissions"] = permissions.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (userRef != null) {
      output["userRef"] = userRef.toJson();
    }

    return output;
  }

  /** Return String representation of EntityUserLink */
  core.String toString() => JSON.encode(this.toJson());

}

/** Entity for this link. It can be an account, a web property, or a view (profile). */
class EntityUserLinkEntity {

  /** Account for this link. */
  AccountRef accountRef;

  /** View (Profile) for this link. */
  ProfileRef profileRef;

  /** Web property for this link. */
  WebPropertyRef webPropertyRef;

  /** Create new EntityUserLinkEntity from JSON data */
  EntityUserLinkEntity.fromJson(core.Map json) {
    if (json.containsKey("accountRef")) {
      accountRef = new AccountRef.fromJson(json["accountRef"]);
    }
    if (json.containsKey("profileRef")) {
      profileRef = new ProfileRef.fromJson(json["profileRef"]);
    }
    if (json.containsKey("webPropertyRef")) {
      webPropertyRef = new WebPropertyRef.fromJson(json["webPropertyRef"]);
    }
  }

  /** Create JSON Object for EntityUserLinkEntity */
  core.Map toJson() {
    var output = new core.Map();

    if (accountRef != null) {
      output["accountRef"] = accountRef.toJson();
    }
    if (profileRef != null) {
      output["profileRef"] = profileRef.toJson();
    }
    if (webPropertyRef != null) {
      output["webPropertyRef"] = webPropertyRef.toJson();
    }

    return output;
  }

  /** Return String representation of EntityUserLinkEntity */
  core.String toString() => JSON.encode(this.toJson());

}

/** Permissions the user has for this entity. */
class EntityUserLinkPermissions {

  /** Effective permissions represent all the permissions that a user has for this entity. These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent entity. Effective permissions are read-only. */
  core.List<core.String> effective;

  /** Permissions that a user has been assigned at this very level. Does not include any implied or inherited permissions. Local permissions are modifiable. */
  core.List<core.String> local;

  /** Create new EntityUserLinkPermissions from JSON data */
  EntityUserLinkPermissions.fromJson(core.Map json) {
    if (json.containsKey("effective")) {
      effective = json["effective"].toList();
    }
    if (json.containsKey("local")) {
      local = json["local"].toList();
    }
  }

  /** Create JSON Object for EntityUserLinkPermissions */
  core.Map toJson() {
    var output = new core.Map();

    if (effective != null) {
      output["effective"] = effective.toList();
    }
    if (local != null) {
      output["local"] = local.toList();
    }

    return output;
  }

  /** Return String representation of EntityUserLinkPermissions */
  core.String toString() => JSON.encode(this.toJson());

}

/** An entity user link collection provides a list of Analytics ACL links Each resource in this collection corresponds to a single link. */
class EntityUserLinks {

  /** A list of entity user links. */
  core.List<EntityUserLink> items;

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

  /** Create new EntityUserLinks from JSON data */
  EntityUserLinks.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new EntityUserLink.fromJson(itemsItem)).toList();
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
  }

  /** Create JSON Object for EntityUserLinks */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

    return output;
  }

  /** Return String representation of EntityUserLinks */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Analytics experiment resource. */
class Experiment {

  /** Account ID to which this experiment belongs. This field is read-only. */
  core.String accountId;

  /** Time the experiment was created. This field is read-only. */
  core.String created;

  /** Notes about this experiment. */
  core.String description;

  /** If true, the end user will be able to edit the experiment via the Google Analytics user interface. */
  core.bool editableInGaUi;

  /** The ending time of the experiment (the time the status changed from RUNNING to ENDED). This field is present only if the experiment has ended. This field is read-only. */
  core.String endTime;

  /** Boolean specifying whether to distribute traffic evenly across all variations. If the value is False, content experiments follows the default behavior of adjusting traffic dynamically based on variation performance. Optional -- defaults to False. This field may not be changed for an experiment whose status is ENDED. */
  core.bool equalWeighting;

  /** Experiment ID. Required for patch and update. Disallowed for create. */
  core.String id;

  /** Internal ID for the web property to which this experiment belongs. This field is read-only. */
  core.String internalWebPropertyId;

  /** Resource type for an Analytics experiment. This field is read-only. */
  core.String kind;

  /** An integer number in [3, 90]. Specifies the minimum length of the experiment. Can be changed for a running experiment. This field may not be changed for an experiments whose status is ENDED. */
  core.int minimumExperimentLengthInDays;

  /** Experiment name. This field may not be changed for an experiment whose status is ENDED. This field is required when creating an experiment. */
  core.String name;

  /** The metric that the experiment is optimizing. Valid values: "ga:goal(n)Completions", "ga:adsenseAdsClicks", "ga:adsenseAdsViewed", "ga:adsenseRevenue", "ga:bounces", "ga:pageviews", "ga:sessionDuration", "ga:transactions", "ga:transactionRevenue". This field is required if status is "RUNNING" and servingFramework is one of "REDIRECT" or "API". */
  core.String objectiveMetric;

  /** Whether the objectiveMetric should be minimized or maximized. Possible values: "MAXIMUM", "MINIMUM". Optional--defaults to "MAXIMUM". Cannot be specified without objectiveMetric. Cannot be modified when status is "RUNNING" or "ENDED". */
  core.String optimizationType;

  /** Parent link for an experiment. Points to the view (profile) to which this experiment belongs. */
  ExperimentParentLink parentLink;

  /** View (Profile) ID to which this experiment belongs. This field is read-only. */
  core.String profileId;

  /** Why the experiment ended. Possible values: "STOPPED_BY_USER", "WINNER_FOUND", "EXPERIMENT_EXPIRED", "ENDED_WITH_NO_WINNER", "GOAL_OBJECTIVE_CHANGED". "ENDED_WITH_NO_WINNER" means that the experiment didn't expire but no winner was projected to be found. If the experiment status is changed via the API to ENDED this field is set to STOPPED_BY_USER. This field is read-only. */
  core.String reasonExperimentEnded;

  /** Boolean specifying whether variations URLS are rewritten to match those of the original. This field may not be changed for an experiments whose status is ENDED. */
  core.bool rewriteVariationUrlsAsOriginal;

  /** Link for this experiment. This field is read-only. */
  core.String selfLink;

  /** The framework used to serve the experiment variations and evaluate the results. One of:  
- REDIRECT: Google Analytics redirects traffic to different variation pages, reports the chosen variation and evaluates the results.
- API: Google Analytics chooses and reports the variation to serve and evaluates the results; the caller is responsible for serving the selected variation.
- EXTERNAL: The variations will be served externally and the chosen variation reported to Google Analytics. The caller is responsible for serving the selected variation and evaluating the results. */
  core.String servingFramework;

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
    if (json.containsKey("editableInGaUi")) {
      editableInGaUi = json["editableInGaUi"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("equalWeighting")) {
      equalWeighting = json["equalWeighting"];
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
    if (json.containsKey("servingFramework")) {
      servingFramework = json["servingFramework"];
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
      variations = json["variations"].map((variationsItem) => new ExperimentVariations.fromJson(variationsItem)).toList();
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
    if (editableInGaUi != null) {
      output["editableInGaUi"] = editableInGaUi;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (equalWeighting != null) {
      output["equalWeighting"] = equalWeighting;
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
    if (servingFramework != null) {
      output["servingFramework"] = servingFramework;
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
      output["variations"] = variations.map((variationsItem) => variationsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Parent link for an experiment. Points to the view (profile) to which this experiment belongs. */
class ExperimentParentLink {

  /** Link to the view (profile) to which this experiment belongs. This field is read-only. */
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** An experiment collection lists Analytics experiments to which the user has access. Each view (profile) can have a set of experiments. Each resource in the Experiment collection corresponds to a single Analytics experiment. */
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
      items = json["items"].map((itemsItem) => new Experiment.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics account filter. */
class Filter {

  /** Account ID to which this filter belongs. */
  core.String accountId;

  /** Details for the filter of the type ADVANCED. */
  FilterAdvancedDetails advancedDetails;

  /** Time this filter was created. */
  core.String created;

  /** Details for the filter of the type EXCLUDE. */
  FilterExpression excludeDetails;

  /** Filter ID. */
  core.String id;

  /** Details for the filter of the type INCLUDE. */
  FilterExpression includeDetails;

  /** Resource type for Analytics filter. */
  core.String kind;

  /** Details for the filter of the type LOWER. */
  FilterLowercaseDetails lowercaseDetails;

  /** Name of this filter. */
  core.String name;

  /** Parent link for this filter. Points to the account to which this filter belongs. */
  FilterParentLink parentLink;

  /** Details for the filter of the type SEARCH_AND_REPLACE. */
  FilterSearchAndReplaceDetails searchAndReplaceDetails;

  /** Link for this filter. */
  core.String selfLink;

  /** Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE, UPPERCASE, SEARCH_AND_REPLACE and ADVANCED. */
  core.String type;

  /** Time this filter was last modified. */
  core.String updated;

  /** Details for the filter of the type UPPER. */
  FilterUppercaseDetails uppercaseDetails;

  /** Create new Filter from JSON data */
  Filter.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("advancedDetails")) {
      advancedDetails = new FilterAdvancedDetails.fromJson(json["advancedDetails"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("excludeDetails")) {
      excludeDetails = new FilterExpression.fromJson(json["excludeDetails"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("includeDetails")) {
      includeDetails = new FilterExpression.fromJson(json["includeDetails"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lowercaseDetails")) {
      lowercaseDetails = new FilterLowercaseDetails.fromJson(json["lowercaseDetails"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("parentLink")) {
      parentLink = new FilterParentLink.fromJson(json["parentLink"]);
    }
    if (json.containsKey("searchAndReplaceDetails")) {
      searchAndReplaceDetails = new FilterSearchAndReplaceDetails.fromJson(json["searchAndReplaceDetails"]);
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
    if (json.containsKey("uppercaseDetails")) {
      uppercaseDetails = new FilterUppercaseDetails.fromJson(json["uppercaseDetails"]);
    }
  }

  /** Create JSON Object for Filter */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (advancedDetails != null) {
      output["advancedDetails"] = advancedDetails.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (excludeDetails != null) {
      output["excludeDetails"] = excludeDetails.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (includeDetails != null) {
      output["includeDetails"] = includeDetails.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lowercaseDetails != null) {
      output["lowercaseDetails"] = lowercaseDetails.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (parentLink != null) {
      output["parentLink"] = parentLink.toJson();
    }
    if (searchAndReplaceDetails != null) {
      output["searchAndReplaceDetails"] = searchAndReplaceDetails.toJson();
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
    if (uppercaseDetails != null) {
      output["uppercaseDetails"] = uppercaseDetails.toJson();
    }

    return output;
  }

  /** Return String representation of Filter */
  core.String toString() => JSON.encode(this.toJson());

}

/** Details for the filter of the type ADVANCED. */
class FilterAdvancedDetails {

  /** Indicates if the filter expressions are case sensitive. */
  core.bool caseSensitive;

  /** Expression to extract from field A. */
  core.String extractA;

  /** Expression to extract from field B. */
  core.String extractB;

  /** Field A. */
  core.String fieldA;

  /** Indicates if field A is required to match. */
  core.bool fieldARequired;

  /** Field B. */
  core.String fieldB;

  /** Indicates if field B is required to match. */
  core.bool fieldBRequired;

  /** Expression used to construct the output value. */
  core.String outputConstructor;

  /** Output field. */
  core.String outputToField;

  /** Indicates if the existing value of the output field, if any, should be overridden by the output expression. */
  core.bool overrideOutputField;

  /** Create new FilterAdvancedDetails from JSON data */
  FilterAdvancedDetails.fromJson(core.Map json) {
    if (json.containsKey("caseSensitive")) {
      caseSensitive = json["caseSensitive"];
    }
    if (json.containsKey("extractA")) {
      extractA = json["extractA"];
    }
    if (json.containsKey("extractB")) {
      extractB = json["extractB"];
    }
    if (json.containsKey("fieldA")) {
      fieldA = json["fieldA"];
    }
    if (json.containsKey("fieldARequired")) {
      fieldARequired = json["fieldARequired"];
    }
    if (json.containsKey("fieldB")) {
      fieldB = json["fieldB"];
    }
    if (json.containsKey("fieldBRequired")) {
      fieldBRequired = json["fieldBRequired"];
    }
    if (json.containsKey("outputConstructor")) {
      outputConstructor = json["outputConstructor"];
    }
    if (json.containsKey("outputToField")) {
      outputToField = json["outputToField"];
    }
    if (json.containsKey("overrideOutputField")) {
      overrideOutputField = json["overrideOutputField"];
    }
  }

  /** Create JSON Object for FilterAdvancedDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (caseSensitive != null) {
      output["caseSensitive"] = caseSensitive;
    }
    if (extractA != null) {
      output["extractA"] = extractA;
    }
    if (extractB != null) {
      output["extractB"] = extractB;
    }
    if (fieldA != null) {
      output["fieldA"] = fieldA;
    }
    if (fieldARequired != null) {
      output["fieldARequired"] = fieldARequired;
    }
    if (fieldB != null) {
      output["fieldB"] = fieldB;
    }
    if (fieldBRequired != null) {
      output["fieldBRequired"] = fieldBRequired;
    }
    if (outputConstructor != null) {
      output["outputConstructor"] = outputConstructor;
    }
    if (outputToField != null) {
      output["outputToField"] = outputToField;
    }
    if (overrideOutputField != null) {
      output["overrideOutputField"] = overrideOutputField;
    }

    return output;
  }

  /** Return String representation of FilterAdvancedDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Details for the filter of the type LOWER. */
class FilterLowercaseDetails {

  /** Field to use in the filter. */
  core.String field;

  /** Create new FilterLowercaseDetails from JSON data */
  FilterLowercaseDetails.fromJson(core.Map json) {
    if (json.containsKey("field")) {
      field = json["field"];
    }
  }

  /** Create JSON Object for FilterLowercaseDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (field != null) {
      output["field"] = field;
    }

    return output;
  }

  /** Return String representation of FilterLowercaseDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Parent link for this filter. Points to the account to which this filter belongs. */
class FilterParentLink {

  /** Link to the account to which this filter belongs. */
  core.String href;

  /** Value is "analytics#account". */
  core.String type;

  /** Create new FilterParentLink from JSON data */
  FilterParentLink.fromJson(core.Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for FilterParentLink */
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

  /** Return String representation of FilterParentLink */
  core.String toString() => JSON.encode(this.toJson());

}

/** Details for the filter of the type SEARCH_AND_REPLACE. */
class FilterSearchAndReplaceDetails {

  /** Determines if the filter is case sensitive. */
  core.bool caseSensitive;

  /** Field to use in the filter. */
  core.String field;

  /** Term to replace the search term with. */
  core.String replaceString;

  /** Term to search. */
  core.String searchString;

  /** Create new FilterSearchAndReplaceDetails from JSON data */
  FilterSearchAndReplaceDetails.fromJson(core.Map json) {
    if (json.containsKey("caseSensitive")) {
      caseSensitive = json["caseSensitive"];
    }
    if (json.containsKey("field")) {
      field = json["field"];
    }
    if (json.containsKey("replaceString")) {
      replaceString = json["replaceString"];
    }
    if (json.containsKey("searchString")) {
      searchString = json["searchString"];
    }
  }

  /** Create JSON Object for FilterSearchAndReplaceDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (caseSensitive != null) {
      output["caseSensitive"] = caseSensitive;
    }
    if (field != null) {
      output["field"] = field;
    }
    if (replaceString != null) {
      output["replaceString"] = replaceString;
    }
    if (searchString != null) {
      output["searchString"] = searchString;
    }

    return output;
  }

  /** Return String representation of FilterSearchAndReplaceDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Details for the filter of the type UPPER. */
class FilterUppercaseDetails {

  /** Field to use in the filter. */
  core.String field;

  /** Create new FilterUppercaseDetails from JSON data */
  FilterUppercaseDetails.fromJson(core.Map json) {
    if (json.containsKey("field")) {
      field = json["field"];
    }
  }

  /** Create JSON Object for FilterUppercaseDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (field != null) {
      output["field"] = field;
    }

    return output;
  }

  /** Return String representation of FilterUppercaseDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics filter expression. */
class FilterExpression {

  /** Determines if the filter is case sensitive. */
  core.bool caseSensitive;

  /** Filter expression value */
  core.String expressionValue;

  /** Field to filter. Possible values:  
- Reserved  
- UNUSED,   
- Content and Traffic  
- PAGE_REQUEST_URI, 
- PAGE_HOSTNAME, 
- PAGE_TITLE, 
- REFERRAL, 
- COST_DATA_URI (Campaign target URL), 
- HIT_TYPE, 
- INTERNAL_SEARCH_TERM, 
- INTERNAL_SEARCH_TYPE, 
- SOURCE_PROPERTY_TRACKING_ID,   
- Campaign or AdGroup  
- CAMPAIGN_SOURCE, 
- CAMPAIGN_MEDIUM, 
- CAMPAIGN_NAME, 
- CAMPAIGN_AD_GROUP, 
- CAMPAIGN_TERM, 
- CAMPAIGN_CONTENT, 
- CAMPAIGN_CODE, 
- CAMPAIGN_REFERRAL_PATH,   
- E-Commerce  
- TRANSACTION_COUNTRY, 
- TRANSACTION_REGION, 
- TRANSACTION_CITY, 
- TRANSACTION_AFFILIATION (Store or order location), 
- ITEM_NAME, 
- ITEM_CODE, 
- ITEM_VARIATION, 
- TRANSACTION_ID, 
- TRANSACTION_CURRENCY_CODE, 
- PRODUCT_ACTION_TYPE,   
- Audience/Users  
- BROWSER, 
- BROWSER_VERSION, 
- BROWSER_SIZE, 
- PLATFORM, 
- PLATFORM_VERSION, 
- LANGUAGE, 
- SCREEN_RESOLUTION, 
- SCREEN_COLORS, 
- JAVA_ENABLED, 
- FLASH_VERSION, 
- GEO_SPEED (Connection speed), 
- VISITOR_TYPE, 
- GEO_ORGANIZATION (ISP organization), 
- GEO_DOMAIN, 
- GEO_IP_ADDRESS, 
- GEO_IP_VERSION,   
- Location  
- GEO_COUNTRY, 
- GEO_REGION, 
- GEO_CITY,   
- Event  
- EVENT_CATEGORY, 
- EVENT_ACTION, 
- EVENT_LABEL,   
- Other  
- CUSTOM_FIELD_1, 
- CUSTOM_FIELD_2, 
- USER_DEFINED_VALUE,   
- Application  
- APP_ID, 
- APP_INSTALLER_ID, 
- APP_NAME, 
- APP_VERSION, 
- SCREEN, 
- IS_APP, 
- IS_FATAL_EXCEPTION, 
- EXCEPTION_DESCRIPTION,   
- Mobile device  
- IS_MOBILE, 
- IS_TABLET, 
- MOBILE_HAS_QWERTY_KEYBOARD, 
- MOBILE_HAS_NFC_SUPPORT, 
- MOBILE_HAS_CELLULAR_RADIO, 
- MOBILE_HAS_WIFI_SUPPORT, 
- MOBILE_BRAND_NAME, 
- MOBILE_MODEL_NAME, 
- MOBILE_MARKETING_NAME, 
- MOBILE_POINTING_METHOD,   
- Social  
- SOCIAL_NETWORK, 
- SOCIAL_ACTION, 
- SOCIAL_ACTION_TARGET, */
  core.String field;

  /** Kind value for filter expression */
  core.String kind;

  /** Match type for this filter. Possible values are BEGINS_WITH, EQUAL, ENDS_WITH, CONTAINS, MATCHES. Include and Exclude filters can use any match type. Match type is not applicable to Upper case and Lower case filters. Search and Replace expressions in the Search and Replace filter and all filter expressions in the Advanced filter default to MATCHES. User should not set match type for those filters. */
  core.String matchType;

  /** Create new FilterExpression from JSON data */
  FilterExpression.fromJson(core.Map json) {
    if (json.containsKey("caseSensitive")) {
      caseSensitive = json["caseSensitive"];
    }
    if (json.containsKey("expressionValue")) {
      expressionValue = json["expressionValue"];
    }
    if (json.containsKey("field")) {
      field = json["field"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("matchType")) {
      matchType = json["matchType"];
    }
  }

  /** Create JSON Object for FilterExpression */
  core.Map toJson() {
    var output = new core.Map();

    if (caseSensitive != null) {
      output["caseSensitive"] = caseSensitive;
    }
    if (expressionValue != null) {
      output["expressionValue"] = expressionValue;
    }
    if (field != null) {
      output["field"] = field;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (matchType != null) {
      output["matchType"] = matchType;
    }

    return output;
  }

  /** Return String representation of FilterExpression */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a profile filter link. */
class FilterRef {

  /** Account ID to which this filter belongs. */
  core.String accountId;

  /** Link for this filter. */
  core.String href;

  /** Filter ID. */
  core.String id;

  /** Kind value for filter reference. */
  core.String kind;

  /** Name of this filter. */
  core.String name;

  /** Create new FilterRef from JSON data */
  FilterRef.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("href")) {
      href = json["href"];
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
  }

  /** Create JSON Object for FilterRef */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (href != null) {
      output["href"] = href;
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

    return output;
  }

  /** Return String representation of FilterRef */
  core.String toString() => JSON.encode(this.toJson());

}

/** A filter collection lists filters created by users in an Analytics account. Each resource in the collection corresponds to a filter. */
class Filters {

  /** A list of filters. */
  core.List<Filter> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this filter collection. */
  core.String nextLink;

  /** Link to previous page for this filter collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new Filters from JSON data */
  Filters.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Filter.fromJson(itemsItem)).toList();
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

  /** Create JSON Object for Filters */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

  /** Return String representation of Filters */
  core.String toString() => JSON.encode(this.toJson());

}

/** Analytics data for a given view (profile). */
class GaData {

  /** Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. */
  core.List<GaDataColumnHeaders> columnHeaders;

  /** Determines if Analytics data contains samples. */
  core.bool containsSampledData;

  GaDataDataTable dataTable;

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

  /** Information for the view (profile), for which the Analytics data was requested. */
  GaDataProfileInfo profileInfo;

  /** Analytics data request query parameters. */
  GaDataQuery query;

  /** Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request. */
  core.List<core.List<core.String>> rows;

  /** The number of samples used to calculate the result. */
  core.int sampleSize;

  /** Total size of the sample space from which the samples were selected. */
  core.int sampleSpace;

  /** Link to this page. */
  core.String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  core.int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  core.Map<core.String, core.String> totalsForAllResults;

  /** Create new GaData from JSON data */
  GaData.fromJson(core.Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = json["columnHeaders"].map((columnHeadersItem) => new GaDataColumnHeaders.fromJson(columnHeadersItem)).toList();
    }
    if (json.containsKey("containsSampledData")) {
      containsSampledData = json["containsSampledData"];
    }
    if (json.containsKey("dataTable")) {
      dataTable = new GaDataDataTable.fromJson(json["dataTable"]);
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
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => rowsItem.toList()).toList();
    }
    if (json.containsKey("sampleSize")) {
      sampleSize = (json["sampleSize"] is core.String) ? core.int.parse(json["sampleSize"]) : json["sampleSize"];
    }
    if (json.containsKey("sampleSpace")) {
      sampleSpace = (json["sampleSpace"] is core.String) ? core.int.parse(json["sampleSpace"]) : json["sampleSpace"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("totalsForAllResults")) {
      totalsForAllResults = _mapMap(json["totalsForAllResults"]);
    }
  }

  /** Create JSON Object for GaData */
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = columnHeaders.map((columnHeadersItem) => columnHeadersItem.toJson()).toList();
    }
    if (containsSampledData != null) {
      output["containsSampledData"] = containsSampledData;
    }
    if (dataTable != null) {
      output["dataTable"] = dataTable.toJson();
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
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toList()).toList();
    }
    if (sampleSize != null) {
      output["sampleSize"] = sampleSize;
    }
    if (sampleSpace != null) {
      output["sampleSpace"] = sampleSpace;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (totalsForAllResults != null) {
      output["totalsForAllResults"] = _mapMap(totalsForAllResults);
    }

    return output;
  }

  /** Return String representation of GaData */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

class GaDataDataTable {

  core.List<GaDataDataTableCols> cols;

  core.List<GaDataDataTableRows> rows;

  /** Create new GaDataDataTable from JSON data */
  GaDataDataTable.fromJson(core.Map json) {
    if (json.containsKey("cols")) {
      cols = json["cols"].map((colsItem) => new GaDataDataTableCols.fromJson(colsItem)).toList();
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => new GaDataDataTableRows.fromJson(rowsItem)).toList();
    }
  }

  /** Create JSON Object for GaDataDataTable */
  core.Map toJson() {
    var output = new core.Map();

    if (cols != null) {
      output["cols"] = cols.map((colsItem) => colsItem.toJson()).toList();
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of GaDataDataTable */
  core.String toString() => JSON.encode(this.toJson());

}

class GaDataDataTableCols {

  core.String id;

  core.String label;

  core.String type;

  /** Create new GaDataDataTableCols from JSON data */
  GaDataDataTableCols.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GaDataDataTableCols */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (label != null) {
      output["label"] = label;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GaDataDataTableCols */
  core.String toString() => JSON.encode(this.toJson());

}

class GaDataDataTableRows {

  core.List<GaDataDataTableRowsC> c;

  /** Create new GaDataDataTableRows from JSON data */
  GaDataDataTableRows.fromJson(core.Map json) {
    if (json.containsKey("c")) {
      c = json["c"].map((cItem) => new GaDataDataTableRowsC.fromJson(cItem)).toList();
    }
  }

  /** Create JSON Object for GaDataDataTableRows */
  core.Map toJson() {
    var output = new core.Map();

    if (c != null) {
      output["c"] = c.map((cItem) => cItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of GaDataDataTableRows */
  core.String toString() => JSON.encode(this.toJson());

}

class GaDataDataTableRowsC {

  core.String v;

  /** Create new GaDataDataTableRowsC from JSON data */
  GaDataDataTableRowsC.fromJson(core.Map json) {
    if (json.containsKey("v")) {
      v = json["v"];
    }
  }

  /** Create JSON Object for GaDataDataTableRowsC */
  core.Map toJson() {
    var output = new core.Map();

    if (v != null) {
      output["v"] = v;
    }

    return output;
  }

  /** Return String representation of GaDataDataTableRowsC */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information for the view (profile), for which the Analytics data was requested. */
class GaDataProfileInfo {

  /** Account ID to which this view (profile) belongs. */
  core.String accountId;

  /** Internal ID for the web property to which this view (profile) belongs. */
  core.String internalWebPropertyId;

  /** View (Profile) ID. */
  core.String profileId;

  /** View (Profile) name. */
  core.String profileName;

  /** Table ID for view (profile). */
  core.String tableId;

  /** Web Property ID to which this view (profile) belongs. */
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
  core.String toString() => JSON.encode(this.toJson());

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

  /** Desired sampling level */
  core.String samplingLevel;

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
      metrics = json["metrics"].toList();
    }
    if (json.containsKey("samplingLevel")) {
      samplingLevel = json["samplingLevel"];
    }
    if (json.containsKey("segment")) {
      segment = json["segment"];
    }
    if (json.containsKey("sort")) {
      sort = json["sort"].toList();
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
      output["metrics"] = metrics.toList();
    }
    if (samplingLevel != null) {
      output["samplingLevel"] = samplingLevel;
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (sort != null) {
      output["sort"] = sort.toList();
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
  core.String toString() => JSON.encode(this.toJson());

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

  /** Parent link for a goal. Points to the view (profile) to which this goal belongs. */
  GoalParentLink parentLink;

  /** View (Profile) ID to which this goal belongs. */
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
  core.String toString() => JSON.encode(this.toJson());

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
      eventConditions = json["eventConditions"].map((eventConditionsItem) => new GoalEventDetailsEventConditions.fromJson(eventConditionsItem)).toList();
    }
    if (json.containsKey("useEventValue")) {
      useEventValue = json["useEventValue"];
    }
  }

  /** Create JSON Object for GoalEventDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (eventConditions != null) {
      output["eventConditions"] = eventConditions.map((eventConditionsItem) => eventConditionsItem.toJson()).toList();
    }
    if (useEventValue != null) {
      output["useEventValue"] = useEventValue;
    }

    return output;
  }

  /** Return String representation of GoalEventDetails */
  core.String toString() => JSON.encode(this.toJson());

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
      comparisonValue = (json["comparisonValue"] is core.String) ? core.int.parse(json["comparisonValue"]) : json["comparisonValue"];
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Parent link for a goal. Points to the view (profile) to which this goal belongs. */
class GoalParentLink {

  /** Link to the view (profile) to which this goal belongs. */
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
  core.String toString() => JSON.encode(this.toJson());

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
      steps = json["steps"].map((stepsItem) => new GoalUrlDestinationDetailsSteps.fromJson(stepsItem)).toList();
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
      output["steps"] = steps.map((stepsItem) => stepsItem.toJson()).toList();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of GoalUrlDestinationDetails */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

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
      comparisonValue = (json["comparisonValue"] is core.String) ? core.int.parse(json["comparisonValue"]) : json["comparisonValue"];
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
  core.String toString() => JSON.encode(this.toJson());

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
      comparisonValue = (json["comparisonValue"] is core.String) ? core.int.parse(json["comparisonValue"]) : json["comparisonValue"];
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
  core.String toString() => JSON.encode(this.toJson());

}

/** A goal collection lists Analytics goals to which the user has access. Each view (profile) can have a set of goals. Each resource in the Goal collection corresponds to a single Analytics goal. */
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
      items = json["items"].map((itemsItem) => new Goal.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Multi-Channel Funnels data for a given view (profile). */
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

  /** Information for the view (profile), for which the Analytics data was requested. */
  McfDataProfileInfo profileInfo;

  /** Analytics data request query parameters. */
  McfDataQuery query;

  /** Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request. */
  core.List<core.List<McfDataRows>> rows;

  /** The number of samples used to calculate the result. */
  core.int sampleSize;

  /** Total size of the sample space from which the samples were selected. */
  core.int sampleSpace;

  /** Link to this page. */
  core.String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  core.int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  core.Map<core.String, core.String> totalsForAllResults;

  /** Create new McfData from JSON data */
  McfData.fromJson(core.Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = json["columnHeaders"].map((columnHeadersItem) => new McfDataColumnHeaders.fromJson(columnHeadersItem)).toList();
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
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => rowsItem.map((rowsItem2) => new McfDataRows.fromJson(rowsItem2)).toList()).toList();
    }
    if (json.containsKey("sampleSize")) {
      sampleSize = (json["sampleSize"] is core.String) ? core.int.parse(json["sampleSize"]) : json["sampleSize"];
    }
    if (json.containsKey("sampleSpace")) {
      sampleSpace = (json["sampleSpace"] is core.String) ? core.int.parse(json["sampleSpace"]) : json["sampleSpace"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("totalsForAllResults")) {
      totalsForAllResults = _mapMap(json["totalsForAllResults"]);
    }
  }

  /** Create JSON Object for McfData */
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = columnHeaders.map((columnHeadersItem) => columnHeadersItem.toJson()).toList();
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
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.map((rowsItem2) => rowsItem2.toJson()).toList()).toList();
    }
    if (sampleSize != null) {
      output["sampleSize"] = sampleSize;
    }
    if (sampleSpace != null) {
      output["sampleSpace"] = sampleSpace;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (totalsForAllResults != null) {
      output["totalsForAllResults"] = _mapMap(totalsForAllResults);
    }

    return output;
  }

  /** Return String representation of McfData */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Information for the view (profile), for which the Analytics data was requested. */
class McfDataProfileInfo {

  /** Account ID to which this view (profile) belongs. */
  core.String accountId;

  /** Internal ID for the web property to which this view (profile) belongs. */
  core.String internalWebPropertyId;

  /** View (Profile) ID. */
  core.String profileId;

  /** View (Profile) name. */
  core.String profileName;

  /** Table ID for view (profile). */
  core.String tableId;

  /** Web Property ID to which this view (profile) belongs. */
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
  core.String toString() => JSON.encode(this.toJson());

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

  /** Desired sampling level */
  core.String samplingLevel;

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
      metrics = json["metrics"].toList();
    }
    if (json.containsKey("samplingLevel")) {
      samplingLevel = json["samplingLevel"];
    }
    if (json.containsKey("segment")) {
      segment = json["segment"];
    }
    if (json.containsKey("sort")) {
      sort = json["sort"].toList();
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
      output["metrics"] = metrics.toList();
    }
    if (samplingLevel != null) {
      output["samplingLevel"] = samplingLevel;
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (sort != null) {
      output["sort"] = sort.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** A union object representing a dimension or metric value. Only one of "primitiveValue" or "conversionPathValue" attribute will be populated. */
class McfDataRows {

  /** A conversion path dimension value, containing a list of interactions with their attributes. */
  core.List<McfDataRowsConversionPathValue> conversionPathValue;

  /** A primitive dimension value. A primitive metric value. */
  core.String primitiveValue;

  /** Create new McfDataRows from JSON data */
  McfDataRows.fromJson(core.Map json) {
    if (json.containsKey("conversionPathValue")) {
      conversionPathValue = json["conversionPathValue"].map((conversionPathValueItem) => new McfDataRowsConversionPathValue.fromJson(conversionPathValueItem)).toList();
    }
    if (json.containsKey("primitiveValue")) {
      primitiveValue = json["primitiveValue"];
    }
  }

  /** Create JSON Object for McfDataRows */
  core.Map toJson() {
    var output = new core.Map();

    if (conversionPathValue != null) {
      output["conversionPathValue"] = conversionPathValue.map((conversionPathValueItem) => conversionPathValueItem.toJson()).toList();
    }
    if (primitiveValue != null) {
      output["primitiveValue"] = primitiveValue;
    }

    return output;
  }

  /** Return String representation of McfDataRows */
  core.String toString() => JSON.encode(this.toJson());

}

class McfDataRowsConversionPathValue {

  /** Type of an interaction on conversion path. Such as CLICK, IMPRESSION etc. */
  core.String interactionType;

  /** Node value of an interaction on conversion path. Such as source, medium etc. */
  core.String nodeValue;

  /** Create new McfDataRowsConversionPathValue from JSON data */
  McfDataRowsConversionPathValue.fromJson(core.Map json) {
    if (json.containsKey("interactionType")) {
      interactionType = json["interactionType"];
    }
    if (json.containsKey("nodeValue")) {
      nodeValue = json["nodeValue"];
    }
  }

  /** Create JSON Object for McfDataRowsConversionPathValue */
  core.Map toJson() {
    var output = new core.Map();

    if (interactionType != null) {
      output["interactionType"] = interactionType;
    }
    if (nodeValue != null) {
      output["nodeValue"] = nodeValue;
    }

    return output;
  }

  /** Return String representation of McfDataRowsConversionPathValue */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics view (profile). */
class Profile {

  /** Account ID to which this view (profile) belongs. */
  core.String accountId;

  /** Child link for this view (profile). Points to the list of goals for this view (profile). */
  ProfileChildLink childLink;

  /** Time this view (profile) was created. */
  core.String created;

  /** The currency type associated with this view (profile). The supported values are:
ARS, AUD, BGN, BRL, CAD, CHF, CNY, CZK, DKK, EUR, GBP, HKD, HUF, IDR, INR, JPY, KRW, LTL, MXN, NOK, NZD, PHP, PLN, RUB, SEK, THB, TRY, TWD, USD, VND, ZAR */
  core.String currency;

  /** Default page for this view (profile). */
  core.String defaultPage;

  /** Indicates whether ecommerce tracking is enabled for this view (profile). */
  core.bool eCommerceTracking;

  /** The query parameters that are excluded from this view (profile). */
  core.String excludeQueryParameters;

  /** View (Profile) ID. */
  core.String id;

  /** Internal ID for the web property to which this view (profile) belongs. */
  core.String internalWebPropertyId;

  /** Resource type for Analytics view (profile). */
  core.String kind;

  /** Name of this view (profile). */
  core.String name;

  /** Parent link for this view (profile). Points to the web property to which this view (profile) belongs. */
  ProfileParentLink parentLink;

  /** Permissions the user has for this view (profile). */
  ProfilePermissions permissions;

  /** Link for this view (profile). */
  core.String selfLink;

  /** Site search category parameters for this view (profile). */
  core.String siteSearchCategoryParameters;

  /** The site search query parameters for this view (profile). */
  core.String siteSearchQueryParameters;

  /** Whether or not Analytics will strip search category parameters from the URLs in your reports. */
  core.bool stripSiteSearchCategoryParameters;

  /** Whether or not Analytics will strip search query parameters from the URLs in your reports. */
  core.bool stripSiteSearchQueryParameters;

  /** Time zone for which this view (profile) has been configured. Time zones are identified by strings from the TZ database. */
  core.String timezone;

  /** View (Profile) type. Supported types: WEB or APP. */
  core.String type;

  /** Time this view (profile) was last modified. */
  core.String updated;

  /** Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs. */
  core.String webPropertyId;

  /** Website URL for this view (profile). */
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
    if (json.containsKey("permissions")) {
      permissions = new ProfilePermissions.fromJson(json["permissions"]);
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
    if (json.containsKey("stripSiteSearchCategoryParameters")) {
      stripSiteSearchCategoryParameters = json["stripSiteSearchCategoryParameters"];
    }
    if (json.containsKey("stripSiteSearchQueryParameters")) {
      stripSiteSearchQueryParameters = json["stripSiteSearchQueryParameters"];
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
    if (permissions != null) {
      output["permissions"] = permissions.toJson();
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
    if (stripSiteSearchCategoryParameters != null) {
      output["stripSiteSearchCategoryParameters"] = stripSiteSearchCategoryParameters;
    }
    if (stripSiteSearchQueryParameters != null) {
      output["stripSiteSearchQueryParameters"] = stripSiteSearchQueryParameters;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Child link for this view (profile). Points to the list of goals for this view (profile). */
class ProfileChildLink {

  /** Link to the list of goals for this view (profile). */
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Parent link for this view (profile). Points to the web property to which this view (profile) belongs. */
class ProfileParentLink {

  /** Link to the web property to which this view (profile) belongs. */
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Permissions the user has for this view (profile). */
class ProfilePermissions {

  /** All the permissions that the user has for this view (profile). These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent web property. */
  core.List<core.String> effective;

  /** Create new ProfilePermissions from JSON data */
  ProfilePermissions.fromJson(core.Map json) {
    if (json.containsKey("effective")) {
      effective = json["effective"].toList();
    }
  }

  /** Create JSON Object for ProfilePermissions */
  core.Map toJson() {
    var output = new core.Map();

    if (effective != null) {
      output["effective"] = effective.toList();
    }

    return output;
  }

  /** Return String representation of ProfilePermissions */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics profile filter link. */
class ProfileFilterLink {

  /** Filter for this link. */
  FilterRef filterRef;

  /** Profile filter link ID. */
  core.String id;

  /** Resource type for Analytics filter. */
  core.String kind;

  /** View (Profile) for this link. */
  ProfileRef profileRef;

  /** The rank of this profile filter link relative to the other filters linked to the same profile.
For readonly (i.e., list and get) operations, the rank always starts at 1.
For write (i.e., create, update, or delete) operations, you may specify a value between 0 and 255 inclusively, [0, 255]. In order to insert a link at the end of the list, either don't specify a rank or set a rank to a number greater than the largest rank in the list. In order to insert a link to the beginning of the list specify a rank that is less than or equal to 1. The new link will move all existing filters with the same or lower rank down the list. After the link is inserted/updated/deleted all profile filter links will be renumbered starting at 1. */
  core.int rank;

  /** Link for this profile filter link. */
  core.String selfLink;

  /** Create new ProfileFilterLink from JSON data */
  ProfileFilterLink.fromJson(core.Map json) {
    if (json.containsKey("filterRef")) {
      filterRef = new FilterRef.fromJson(json["filterRef"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileRef")) {
      profileRef = new ProfileRef.fromJson(json["profileRef"]);
    }
    if (json.containsKey("rank")) {
      rank = json["rank"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ProfileFilterLink */
  core.Map toJson() {
    var output = new core.Map();

    if (filterRef != null) {
      output["filterRef"] = filterRef.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileRef != null) {
      output["profileRef"] = profileRef.toJson();
    }
    if (rank != null) {
      output["rank"] = rank;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ProfileFilterLink */
  core.String toString() => JSON.encode(this.toJson());

}

/** A profile filter link collection lists profile filter links between profiles and filters. Each resource in the collection corresponds to a profile filter link. */
class ProfileFilterLinks {

  /** A list of profile filter links. */
  core.List<ProfileFilterLink> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this profile filter link collection. */
  core.String nextLink;

  /** Link to previous page for this profile filter link collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of results in the response. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new ProfileFilterLinks from JSON data */
  ProfileFilterLinks.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new ProfileFilterLink.fromJson(itemsItem)).toList();
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

  /** Create JSON Object for ProfileFilterLinks */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

  /** Return String representation of ProfileFilterLinks */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a linked view (profile). */
class ProfileRef {

  /** Account ID to which this view (profile) belongs. */
  core.String accountId;

  /** Link for this view (profile). */
  core.String href;

  /** View (Profile) ID. */
  core.String id;

  /** Internal ID for the web property to which this view (profile) belongs. */
  core.String internalWebPropertyId;

  /** Analytics view (profile) reference. */
  core.String kind;

  /** Name of this view (profile). */
  core.String name;

  /** Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs. */
  core.String webPropertyId;

  /** Create new ProfileRef from JSON data */
  ProfileRef.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("href")) {
      href = json["href"];
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
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for ProfileRef */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (href != null) {
      output["href"] = href;
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
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of ProfileRef */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics ProfileSummary. ProfileSummary returns basic information (i.e., summary) for a profile. */
class ProfileSummary {

  /** View (profile) ID. */
  core.String id;

  /** Resource type for Analytics ProfileSummary. */
  core.String kind;

  /** View (profile) name. */
  core.String name;

  /** View (Profile) type. Supported types: WEB or APP. */
  core.String type;

  /** Create new ProfileSummary from JSON data */
  ProfileSummary.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProfileSummary */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProfileSummary */
  core.String toString() => JSON.encode(this.toJson());

}

/** A view (profile) collection lists Analytics views (profiles) to which the user has access. Each resource in the collection corresponds to a single Analytics view (profile). */
class Profiles {

  /** A list of views (profiles). */
  core.List<Profile> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this view (profile) collection. */
  core.String nextLink;

  /** Link to previous page for this view (profile) collection. */
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
      items = json["items"].map((itemsItem) => new Profile.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Real time data for a given view (profile). */
class RealtimeData {

  /** Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. */
  core.List<RealtimeDataColumnHeaders> columnHeaders;

  /** Unique ID for this data response. */
  core.String id;

  /** Resource type. */
  core.String kind;

  /** Information for the view (profile), for which the real time data was requested. */
  RealtimeDataProfileInfo profileInfo;

  /** Real time data request query parameters. */
  RealtimeDataQuery query;

  /** Real time data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request. */
  core.List<core.List<core.String>> rows;

  /** Link to this page. */
  core.String selfLink;

  /** The total number of rows for the query, regardless of the number of rows in the response. */
  core.int totalResults;

  /** Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. */
  core.Map<core.String, core.String> totalsForAllResults;

  /** Create new RealtimeData from JSON data */
  RealtimeData.fromJson(core.Map json) {
    if (json.containsKey("columnHeaders")) {
      columnHeaders = json["columnHeaders"].map((columnHeadersItem) => new RealtimeDataColumnHeaders.fromJson(columnHeadersItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileInfo")) {
      profileInfo = new RealtimeDataProfileInfo.fromJson(json["profileInfo"]);
    }
    if (json.containsKey("query")) {
      query = new RealtimeDataQuery.fromJson(json["query"]);
    }
    if (json.containsKey("rows")) {
      rows = json["rows"].map((rowsItem) => rowsItem.toList()).toList();
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
    if (json.containsKey("totalsForAllResults")) {
      totalsForAllResults = _mapMap(json["totalsForAllResults"]);
    }
  }

  /** Create JSON Object for RealtimeData */
  core.Map toJson() {
    var output = new core.Map();

    if (columnHeaders != null) {
      output["columnHeaders"] = columnHeaders.map((columnHeadersItem) => columnHeadersItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileInfo != null) {
      output["profileInfo"] = profileInfo.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (rows != null) {
      output["rows"] = rows.map((rowsItem) => rowsItem.toList()).toList();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }
    if (totalsForAllResults != null) {
      output["totalsForAllResults"] = _mapMap(totalsForAllResults);
    }

    return output;
  }

  /** Return String representation of RealtimeData */
  core.String toString() => JSON.encode(this.toJson());

}

class RealtimeDataColumnHeaders {

  /** Column Type. Either DIMENSION or METRIC. */
  core.String columnType;

  /** Data type. Dimension column headers have only STRING as the data type. Metric column headers have data types for metric values such as INTEGER, DOUBLE, CURRENCY etc. */
  core.String dataType;

  /** Column name. */
  core.String name;

  /** Create new RealtimeDataColumnHeaders from JSON data */
  RealtimeDataColumnHeaders.fromJson(core.Map json) {
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

  /** Create JSON Object for RealtimeDataColumnHeaders */
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

  /** Return String representation of RealtimeDataColumnHeaders */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information for the view (profile), for which the real time data was requested. */
class RealtimeDataProfileInfo {

  /** Account ID to which this view (profile) belongs. */
  core.String accountId;

  /** Internal ID for the web property to which this view (profile) belongs. */
  core.String internalWebPropertyId;

  /** View (Profile) ID. */
  core.String profileId;

  /** View (Profile) name. */
  core.String profileName;

  /** Table ID for view (profile). */
  core.String tableId;

  /** Web Property ID to which this view (profile) belongs. */
  core.String webPropertyId;

  /** Create new RealtimeDataProfileInfo from JSON data */
  RealtimeDataProfileInfo.fromJson(core.Map json) {
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

  /** Create JSON Object for RealtimeDataProfileInfo */
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

  /** Return String representation of RealtimeDataProfileInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Real time data request query parameters. */
class RealtimeDataQuery {

  /** List of real time dimensions. */
  core.String dimensions;

  /** Comma-separated list of dimension or metric filters. */
  core.String filters;

  /** Unique table ID. */
  core.String ids;

  /** Maximum results per page. */
  core.int max_results;

  /** List of real time metrics. */
  core.List<core.String> metrics;

  /** List of dimensions or metrics based on which real time data is sorted. */
  core.List<core.String> sort;

  /** Create new RealtimeDataQuery from JSON data */
  RealtimeDataQuery.fromJson(core.Map json) {
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"];
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
      metrics = json["metrics"].toList();
    }
    if (json.containsKey("sort")) {
      sort = json["sort"].toList();
    }
  }

  /** Create JSON Object for RealtimeDataQuery */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensions != null) {
      output["dimensions"] = dimensions;
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
      output["metrics"] = metrics.toList();
    }
    if (sort != null) {
      output["sort"] = sort.toList();
    }

    return output;
  }

  /** Return String representation of RealtimeDataQuery */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics segment. */
class Segment {

  /** Time the segment was created. */
  core.String created;

  /** Segment definition. */
  core.String definition;

  /** Segment ID. */
  core.String id;

  /** Resource type for Analytics segment. */
  core.String kind;

  /** Segment name. */
  core.String name;

  /** Segment ID. Can be used with the 'segment' parameter in Core Reporting API. */
  core.String segmentId;

  /** Link for this segment. */
  core.String selfLink;

  /** Type for a segment. Possible values are "BUILT_IN" or "CUSTOM". */
  core.String type;

  /** Time the segment was last modified. */
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
    if (json.containsKey("type")) {
      type = json["type"];
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
    if (type != null) {
      output["type"] = type;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Segment */
  core.String toString() => JSON.encode(this.toJson());

}

/** An segment collection lists Analytics segments that the user has access to. Each resource in the collection corresponds to a single Analytics segment. */
class Segments {

  /** A list of segments. */
  core.List<Segment> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type for segments. */
  core.String kind;

  /** Link to next page for this segment collection. */
  core.String nextLink;

  /** Link to previous page for this segment collection. */
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
      items = json["items"].map((itemsItem) => new Segment.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Analytics unsampled report resource. */
class UnsampledReport {

  /** Account ID to which this unsampled report belongs. */
  core.String accountId;

  /** Download details for a file stored in Google Cloud Storage. */
  UnsampledReportCloudStorageDownloadDetails cloudStorageDownloadDetails;

  /** Time this unsampled report was created. */
  core.String created;

  /** The dimensions for the unsampled report. */
  core.String dimensions;

  /** The type of download you need to use for the report data file. */
  core.String downloadType;

  /** Download details for a file stored in Google Drive. */
  UnsampledReportDriveDownloadDetails driveDownloadDetails;

  /** The end date for the unsampled report. */
  core.String end_date;

  /** The filters for the unsampled report. */
  core.String filters;

  /** Unsampled report ID. */
  core.String id;

  /** Resource type for an Analytics unsampled report. */
  core.String kind;

  /** The metrics for the unsampled report. */
  core.String metrics;

  /** View (Profile) ID to which this unsampled report belongs. */
  core.String profileId;

  /** The segment for the unsampled report. */
  core.String segment;

  /** Link for this unsampled report. */
  core.String selfLink;

  /** The start date for the unsampled report. */
  core.String start_date;

  /** Status of this unsampled report. Possible values are PENDING, COMPLETED, or FAILED. */
  core.String status;

  /** Title of the unsampled report. */
  core.String title;

  /** Time this unsampled report was last modified. */
  core.String updated;

  /** Web property ID to which this unsampled report belongs. The web property ID is of the form UA-XXXXX-YY. */
  core.String webPropertyId;

  /** Create new UnsampledReport from JSON data */
  UnsampledReport.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("cloudStorageDownloadDetails")) {
      cloudStorageDownloadDetails = new UnsampledReportCloudStorageDownloadDetails.fromJson(json["cloudStorageDownloadDetails"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"];
    }
    if (json.containsKey("downloadType")) {
      downloadType = json["downloadType"];
    }
    if (json.containsKey("driveDownloadDetails")) {
      driveDownloadDetails = new UnsampledReportDriveDownloadDetails.fromJson(json["driveDownloadDetails"]);
    }
    if (json.containsKey("end-date")) {
      end_date = json["end-date"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("segment")) {
      segment = json["segment"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("start-date")) {
      start_date = json["start-date"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("webPropertyId")) {
      webPropertyId = json["webPropertyId"];
    }
  }

  /** Create JSON Object for UnsampledReport */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (cloudStorageDownloadDetails != null) {
      output["cloudStorageDownloadDetails"] = cloudStorageDownloadDetails.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions;
    }
    if (downloadType != null) {
      output["downloadType"] = downloadType;
    }
    if (driveDownloadDetails != null) {
      output["driveDownloadDetails"] = driveDownloadDetails.toJson();
    }
    if (end_date != null) {
      output["end-date"] = end_date;
    }
    if (filters != null) {
      output["filters"] = filters;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (segment != null) {
      output["segment"] = segment;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (start_date != null) {
      output["start-date"] = start_date;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (webPropertyId != null) {
      output["webPropertyId"] = webPropertyId;
    }

    return output;
  }

  /** Return String representation of UnsampledReport */
  core.String toString() => JSON.encode(this.toJson());

}

/** Download details for a file stored in Google Cloud Storage. */
class UnsampledReportCloudStorageDownloadDetails {

  /** Id of the bucket the file object is stored in. */
  core.String bucketId;

  /** Id of the file object containing the report data. */
  core.String objectId;

  /** Create new UnsampledReportCloudStorageDownloadDetails from JSON data */
  UnsampledReportCloudStorageDownloadDetails.fromJson(core.Map json) {
    if (json.containsKey("bucketId")) {
      bucketId = json["bucketId"];
    }
    if (json.containsKey("objectId")) {
      objectId = json["objectId"];
    }
  }

  /** Create JSON Object for UnsampledReportCloudStorageDownloadDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (bucketId != null) {
      output["bucketId"] = bucketId;
    }
    if (objectId != null) {
      output["objectId"] = objectId;
    }

    return output;
  }

  /** Return String representation of UnsampledReportCloudStorageDownloadDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Download details for a file stored in Google Drive. */
class UnsampledReportDriveDownloadDetails {

  /** Id of the document/file containing the report data. */
  core.String documentId;

  /** Create new UnsampledReportDriveDownloadDetails from JSON data */
  UnsampledReportDriveDownloadDetails.fromJson(core.Map json) {
    if (json.containsKey("documentId")) {
      documentId = json["documentId"];
    }
  }

  /** Create JSON Object for UnsampledReportDriveDownloadDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (documentId != null) {
      output["documentId"] = documentId;
    }

    return output;
  }

  /** Return String representation of UnsampledReportDriveDownloadDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** An unsampled report collection lists Analytics unsampled reports to which the user has access. Each view (profile) can have a set of unsampled reports. Each resource in the unsampled report collection corresponds to a single Analytics unsampled report. */
class UnsampledReports {

  /** A list of unsampled reports. */
  core.List<UnsampledReport> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this unsampled report collection. */
  core.String nextLink;

  /** Link to previous page for this unsampled report collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of resources in the result. */
  core.int totalResults;

  /** Email ID of the authenticated user */
  core.String username;

  /** Create new UnsampledReports from JSON data */
  UnsampledReports.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new UnsampledReport.fromJson(itemsItem)).toList();
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

  /** Create JSON Object for UnsampledReports */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

  /** Return String representation of UnsampledReports */
  core.String toString() => JSON.encode(this.toJson());

}

/** Metadata returned for an upload operation. */
class Upload {

  /** Account Id to which this upload belongs. */
  core.int accountId;

  /** Custom data source Id to which this data import belongs. */
  core.String customDataSourceId;

  /** Data import errors collection. */
  core.List<core.String> errors;

  /** A unique ID for this upload. */
  core.String id;

  /** Resource type for Analytics upload. */
  core.String kind;

  /** Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING, DELETED. */
  core.String status;

  /** Create new Upload from JSON data */
  Upload.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = (json["accountId"] is core.String) ? core.int.parse(json["accountId"]) : json["accountId"];
    }
    if (json.containsKey("customDataSourceId")) {
      customDataSourceId = json["customDataSourceId"];
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Upload */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (customDataSourceId != null) {
      output["customDataSourceId"] = customDataSourceId;
    }
    if (errors != null) {
      output["errors"] = errors.toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Upload */
  core.String toString() => JSON.encode(this.toJson());

}

/** Upload collection lists Analytics uploads to which the user has access. Each custom data source can have a set of uploads. Each resource in the upload collection corresponds to a single Analytics data upload. */
class Uploads {

  /** A list of uploads. */
  core.List<Upload> items;

  /** The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. */
  core.int itemsPerPage;

  /** Collection type. */
  core.String kind;

  /** Link to next page for this upload collection. */
  core.String nextLink;

  /** Link to previous page for this upload collection. */
  core.String previousLink;

  /** The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. */
  core.int startIndex;

  /** The total number of results for the query, regardless of the number of resources in the result. */
  core.int totalResults;

  /** Create new Uploads from JSON data */
  Uploads.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Upload.fromJson(itemsItem)).toList();
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
  }

  /** Create JSON Object for Uploads */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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

    return output;
  }

  /** Return String representation of Uploads */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a user reference. */
class UserRef {

  /** Email ID of this user. */
  core.String email;

  /** User ID. */
  core.String id;

  core.String kind;

  /** Create new UserRef from JSON data */
  UserRef.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UserRef */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UserRef */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for a web property reference. */
class WebPropertyRef {

  /** Account ID to which this web property belongs. */
  core.String accountId;

  /** Link for this web property. */
  core.String href;

  /** Web property ID of the form UA-XXXXX-YY. */
  core.String id;

  /** Internal ID for this web property. */
  core.String internalWebPropertyId;

  /** Analytics web property reference. */
  core.String kind;

  /** Name of this web property. */
  core.String name;

  /** Create new WebPropertyRef from JSON data */
  WebPropertyRef.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("href")) {
      href = json["href"];
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
  }

  /** Create JSON Object for WebPropertyRef */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (href != null) {
      output["href"] = href;
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

    return output;
  }

  /** Return String representation of WebPropertyRef */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics WebPropertySummary. WebPropertySummary returns basic information (i.e., summary) for a web property. */
class WebPropertySummary {

  /** Web property ID of the form UA-XXXXX-YY. */
  core.String id;

  /** Internal ID for this web property. */
  core.String internalWebPropertyId;

  /** Resource type for Analytics WebPropertySummary. */
  core.String kind;

  /** Level for this web property. Possible values are STANDARD or PREMIUM. */
  core.String level;

  /** Web property name. */
  core.String name;

  /** List of profiles under this web property. */
  core.List<ProfileSummary> profiles;

  /** Website url for this web property. */
  core.String websiteUrl;

  /** Create new WebPropertySummary from JSON data */
  WebPropertySummary.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
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
    if (json.containsKey("profiles")) {
      profiles = json["profiles"].map((profilesItem) => new ProfileSummary.fromJson(profilesItem)).toList();
    }
    if (json.containsKey("websiteUrl")) {
      websiteUrl = json["websiteUrl"];
    }
  }

  /** Create JSON Object for WebPropertySummary */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
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
    if (profiles != null) {
      output["profiles"] = profiles.map((profilesItem) => profilesItem.toJson()).toList();
    }
    if (websiteUrl != null) {
      output["websiteUrl"] = websiteUrl;
    }

    return output;
  }

  /** Return String representation of WebPropertySummary */
  core.String toString() => JSON.encode(this.toJson());

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
      items = json["items"].map((itemsItem) => new Webproperty.fromJson(itemsItem)).toList();
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
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an Analytics web property. */
class Webproperty {

  /** Account ID to which this web property belongs. */
  core.String accountId;

  /** Child link for this web property. Points to the list of views (profiles) for this web property. */
  WebpropertyChildLink childLink;

  /** Time this web property was created. */
  core.String created;

  /** Default view (profile) ID. */
  core.int defaultProfileId;

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

  /** Permissions the user has for this web property. */
  WebpropertyPermissions permissions;

  /** View (Profile) count for this web property. */
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
    if (json.containsKey("defaultProfileId")) {
      defaultProfileId = (json["defaultProfileId"] is core.String) ? core.int.parse(json["defaultProfileId"]) : json["defaultProfileId"];
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
    if (json.containsKey("permissions")) {
      permissions = new WebpropertyPermissions.fromJson(json["permissions"]);
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
    if (defaultProfileId != null) {
      output["defaultProfileId"] = defaultProfileId;
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
    if (permissions != null) {
      output["permissions"] = permissions.toJson();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Child link for this web property. Points to the list of views (profiles) for this web property. */
class WebpropertyChildLink {

  /** Link to the list of views (profiles) for this web property. */
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Permissions the user has for this web property. */
class WebpropertyPermissions {

  /** All the permissions that the user has for this web property. These include any implied permissions (e.g., EDIT implies VIEW) or inherited permissions from the parent account. */
  core.List<core.String> effective;

  /** Create new WebpropertyPermissions from JSON data */
  WebpropertyPermissions.fromJson(core.Map json) {
    if (json.containsKey("effective")) {
      effective = json["effective"].toList();
    }
  }

  /** Create JSON Object for WebpropertyPermissions */
  core.Map toJson() {
    var output = new core.Map();

    if (effective != null) {
      output["effective"] = effective.toList();
    }

    return output;
  }

  /** Return String representation of WebpropertyPermissions */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
