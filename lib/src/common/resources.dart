part of analytics_v3_api_client;

class DataResource extends Resource {

  DataGaResource _ga;
  DataGaResource get ga => _ga;
  DataMcfResource _mcf;
  DataMcfResource get mcf => _mcf;

  DataResource(Client client) : super(client) {
  _ga = new DataGaResource(client);
  _mcf = new DataMcfResource(client);
  }
}

class DataGaResource extends Resource {

  DataGaResource(Client client) : super(client) {
  }

  /**
   * Returns Analytics data for a profile.
   *
   * [ids] - Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics profile ID.
   *
   * [start_date] - Start date for fetching Analytics data. All requests should specify a start date formatted as YYYY-MM-DD.
   *
   * [end_date] - End date for fetching Analytics data. All requests should specify an end date formatted as YYYY-MM-DD.
   *
   * [metrics] - A comma-separated list of Analytics metrics. E.g., 'ga:visits,ga:pageviews'. At least one metric must be specified.
   *
   * [dimensions] - A comma-separated list of Analytics dimensions. E.g., 'ga:browser,ga:city'.
   *
   * [filters] - A comma-separated list of dimension or metric filters to be applied to Analytics data.
   *
   * [max_results] - The maximum number of entries to include in this feed.
   *
   * [segment] - An Analytics advanced segment to be applied to data.
   *
   * [sort] - A comma-separated list of dimensions or metrics that determine the sort order for Analytics data.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<GaData> get(String ids, String start_date, String end_date, String metrics, {String dimensions, String filters, int max_results, String segment, String sort, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "data/ga";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (dimensions != null) queryParams["dimensions"] = dimensions;
    if (end_date == null) paramErrors.add("end_date is required");
    if (end_date != null) queryParams["end-date"] = end_date;
    if (filters != null) queryParams["filters"] = filters;
    if (ids == null) paramErrors.add("ids is required");
    if (ids != null) queryParams["ids"] = ids;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (metrics == null) paramErrors.add("metrics is required");
    if (metrics != null) queryParams["metrics"] = metrics;
    if (segment != null) queryParams["segment"] = segment;
    if (sort != null) queryParams["sort"] = sort;
    if (start_date == null) paramErrors.add("start_date is required");
    if (start_date != null) queryParams["start-date"] = start_date;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new GaData.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class DataMcfResource extends Resource {

  DataMcfResource(Client client) : super(client) {
  }

  /**
   * Returns Analytics Multi-Channel Funnels data for a profile.
   *
   * [ids] - Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics profile ID.
   *
   * [start_date] - Start date for fetching Analytics data. All requests should specify a start date formatted as YYYY-MM-DD.
   *
   * [end_date] - End date for fetching Analytics data. All requests should specify an end date formatted as YYYY-MM-DD.
   *
   * [metrics] - A comma-separated list of Multi-Channel Funnels metrics. E.g., 'mcf:totalConversions,mcf:totalConversionValue'. At least one metric must be specified.
   *
   * [dimensions] - A comma-separated list of Multi-Channel Funnels dimensions. E.g., 'mcf:source,mcf:medium'.
   *
   * [filters] - A comma-separated list of dimension or metric filters to be applied to the Analytics data.
   *
   * [max_results] - The maximum number of entries to include in this feed.
   *
   * [sort] - A comma-separated list of dimensions or metrics that determine the sort order for the Analytics data.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<McfData> get(String ids, String start_date, String end_date, String metrics, {String dimensions, String filters, int max_results, String sort, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "data/mcf";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (dimensions != null) queryParams["dimensions"] = dimensions;
    if (end_date == null) paramErrors.add("end_date is required");
    if (end_date != null) queryParams["end-date"] = end_date;
    if (filters != null) queryParams["filters"] = filters;
    if (ids == null) paramErrors.add("ids is required");
    if (ids != null) queryParams["ids"] = ids;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (metrics == null) paramErrors.add("metrics is required");
    if (metrics != null) queryParams["metrics"] = metrics;
    if (sort != null) queryParams["sort"] = sort;
    if (start_date == null) paramErrors.add("start_date is required");
    if (start_date != null) queryParams["start-date"] = start_date;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new McfData.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementResource extends Resource {

  ManagementAccountsResource _accounts;
  ManagementAccountsResource get accounts => _accounts;
  ManagementCustomDataSourcesResource _customDataSources;
  ManagementCustomDataSourcesResource get customDataSources => _customDataSources;
  ManagementDailyUploadsResource _dailyUploads;
  ManagementDailyUploadsResource get dailyUploads => _dailyUploads;
  ManagementGoalsResource _goals;
  ManagementGoalsResource get goals => _goals;
  ManagementProfilesResource _profiles;
  ManagementProfilesResource get profiles => _profiles;
  ManagementSegmentsResource _segments;
  ManagementSegmentsResource get segments => _segments;
  ManagementWebpropertiesResource _webproperties;
  ManagementWebpropertiesResource get webproperties => _webproperties;

  ManagementResource(Client client) : super(client) {
  _accounts = new ManagementAccountsResource(client);
  _customDataSources = new ManagementCustomDataSourcesResource(client);
  _dailyUploads = new ManagementDailyUploadsResource(client);
  _goals = new ManagementGoalsResource(client);
  _profiles = new ManagementProfilesResource(client);
  _segments = new ManagementSegmentsResource(client);
  _webproperties = new ManagementWebpropertiesResource(client);
  }
}

class ManagementAccountsResource extends Resource {

  ManagementAccountsResource(Client client) : super(client) {
  }

  /**
   * Lists all accounts to which the user has access.
   *
   * [max_results] - The maximum number of accounts to include in this response.
   *
   * [start_index] - An index of the first account to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<Accounts> list({int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (max_results != null) queryParams["max-results"] = max_results;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Accounts.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementCustomDataSourcesResource extends Resource {

  ManagementCustomDataSourcesResource(Client client) : super(client) {
  }

  /**
   * List custom data sources to which the user has access.
   *
   * [accountId] - Account Id for the custom data sources to retrieve.
   *
   * [webPropertyId] - Web property Id for the custom data sources to retrieve.
   *
   * [max_results] - The maximum number of custom data sources to include in this response.
   *   Minimum: 1
   *
   * [start_index] - A 1-based index of the first custom data source to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomDataSources> list(String accountId, String webPropertyId, {int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (webPropertyId == null) paramErrors.add("webPropertyId is required");
    if (webPropertyId != null) urlParams["webPropertyId"] = webPropertyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomDataSources.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementDailyUploadsResource extends Resource {

  ManagementDailyUploadsResource(Client client) : super(client) {
  }

  /**
   * Delete uploaded data for the given date.
   *
   * [accountId] - Account Id associated with daily upload delete.
   *
   * [webPropertyId] - Web property Id associated with daily upload delete.
   *
   * [customDataSourceId] - Custom data source Id associated with daily upload delete.
   *
   * [date] - Date for which data is to be deleted. Date should be formatted as YYYY-MM-DD.
   *
   * [type] - Type of data for this delete.
   *   Allowed values:
   *     cost - Value for specifying cost data upload.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String accountId, String webPropertyId, String customDataSourceId, String date, String type, {Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads/{date}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
    if (date == null) paramErrors.add("date is required");
    if (date != null) urlParams["date"] = date;
    if (type == null) paramErrors.add("type is required");
    if (type != null && !["cost"].contains(type)) {
      paramErrors.add("Allowed values for type: cost");
    }
    if (type != null) queryParams["type"] = type;
    if (webPropertyId == null) paramErrors.add("webPropertyId is required");
    if (webPropertyId != null) urlParams["webPropertyId"] = webPropertyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List daily uploads to which the user has access.
   *
   * [accountId] - Account Id for the daily uploads to retrieve.
   *
   * [webPropertyId] - Web property Id for the daily uploads to retrieve.
   *
   * [customDataSourceId] - Custom data source Id for daily uploads to retrieve.
   *
   * [start_date] - Start date of the form YYYY-MM-DD.
   *
   * [end_date] - End date of the form YYYY-MM-DD.
   *
   * [max_results] - The maximum number of custom data sources to include in this response.
   *   Minimum: 1
   *
   * [start_index] - A 1-based index of the first daily upload to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<DailyUploads> list(String accountId, String webPropertyId, String customDataSourceId, String start_date, String end_date, {int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
    if (end_date == null) paramErrors.add("end_date is required");
    if (end_date != null) queryParams["end-date"] = end_date;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (start_date == null) paramErrors.add("start_date is required");
    if (start_date != null) queryParams["start-date"] = start_date;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (webPropertyId == null) paramErrors.add("webPropertyId is required");
    if (webPropertyId != null) urlParams["webPropertyId"] = webPropertyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DailyUploads.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update/Overwrite data for a custom data source.
   *
   * [accountId] - Account Id associated with daily upload.
   *
   * [webPropertyId] - Web property Id associated with daily upload.
   *
   * [customDataSourceId] - Custom data source Id to which the data being uploaded belongs.
   *
   * [date] - Date for which data is uploaded. Date should be formatted as YYYY-MM-DD.
   *
   * [appendNumber] - Append number for this upload indexed from 1.
   *   Minimum: 1
   *   Maximum: 20
   *
   * [type] - Type of data for this upload.
   *   Allowed values:
   *     cost - Value for specifying cost data upload.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [reset] - Reset/Overwrite all previous appends for this date and start over with this file as the first upload.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  Future<DailyUploadAppend> upload(String accountId, String webPropertyId, String customDataSourceId, String date, int appendNumber, String type, {String content, String contentType, bool reset, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads/{date}/uploads";
    var uploadUrl = "/upload/analytics/v3/management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads/{date}/uploads";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (appendNumber == null) paramErrors.add("appendNumber is required");
    if (appendNumber != null) queryParams["appendNumber"] = appendNumber;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
    if (date == null) paramErrors.add("date is required");
    if (date != null) urlParams["date"] = date;
    if (reset != null) queryParams["reset"] = reset;
    if (type == null) paramErrors.add("type is required");
    if (type != null && !["cost"].contains(type)) {
      paramErrors.add("Allowed values for type: cost");
    }
    if (type != null) queryParams["type"] = type;
    if (webPropertyId == null) paramErrors.add("webPropertyId is required");
    if (webPropertyId != null) urlParams["webPropertyId"] = webPropertyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new DailyUploadAppend.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementGoalsResource extends Resource {

  ManagementGoalsResource(Client client) : super(client) {
  }

  /**
   * Lists goals to which the user has access.
   *
   * [accountId] - Account ID to retrieve goals for. Can either be a specific account ID or '~all', which refers to all the accounts that user has access to.
   *
   * [webPropertyId] - Web property ID to retrieve goals for. Can either be a specific web property ID or '~all', which refers to all the web properties that user has access to.
   *
   * [profileId] - Profile ID to retrieve goals for. Can either be a specific profile ID or '~all', which refers to all the profiles that user has access to.
   *
   * [max_results] - The maximum number of goals to include in this response.
   *
   * [start_index] - An index of the first goal to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<Goals> list(String accountId, String webPropertyId, String profileId, {int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (webPropertyId == null) paramErrors.add("webPropertyId is required");
    if (webPropertyId != null) urlParams["webPropertyId"] = webPropertyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Goals.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementProfilesResource extends Resource {

  ManagementProfilesResource(Client client) : super(client) {
  }

  /**
   * Lists profiles to which the user has access.
   *
   * [accountId] - Account ID for the profiles to retrieve. Can either be a specific account ID or '~all', which refers to all the accounts to which the user has access.
   *
   * [webPropertyId] - Web property ID for the profiles to retrieve. Can either be a specific web property ID or '~all', which refers to all the web properties to which the user has access.
   *
   * [max_results] - The maximum number of profiles to include in this response.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<Profiles> list(String accountId, String webPropertyId, {int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (webPropertyId == null) paramErrors.add("webPropertyId is required");
    if (webPropertyId != null) urlParams["webPropertyId"] = webPropertyId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Profiles.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementSegmentsResource extends Resource {

  ManagementSegmentsResource(Client client) : super(client) {
  }

  /**
   * Lists advanced segments to which the user has access.
   *
   * [max_results] - The maximum number of advanced segments to include in this response.
   *
   * [start_index] - An index of the first advanced segment to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<Segments> list({int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/segments";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (max_results != null) queryParams["max-results"] = max_results;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Segments.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ManagementWebpropertiesResource extends Resource {

  ManagementWebpropertiesResource(Client client) : super(client) {
  }

  /**
   * Lists web properties to which the user has access.
   *
   * [accountId] - Account ID to retrieve web properties for. Can either be a specific account ID or '~all', which refers to all the accounts that user has access to.
   *
   * [max_results] - The maximum number of web properties to include in this response.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  Future<Webproperties> list(String accountId, {int max_results, int start_index, Map optParams}) {
    var completer = new Completer();
    var url = "management/accounts/{accountId}/webproperties";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (start_index != null) queryParams["start-index"] = start_index;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Webproperties.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

