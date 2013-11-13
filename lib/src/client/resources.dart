part of analytics_v3_api;

class DataResource_ {

  final Client _client;

  final DataGaResource_ ga;
  final DataMcfResource_ mcf;
  final DataRealtimeResource_ realtime;

  DataResource_(Client client) :
      _client = client,
      ga = new DataGaResource_(client),
      mcf = new DataMcfResource_(client),
      realtime = new DataRealtimeResource_(client);
}

class DataGaResource_ {

  final Client _client;

  DataGaResource_(Client client) :
      _client = client;

  /**
   * Returns Analytics data for a view (profile).
   *
   * [ids] - Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.
   *
   * [start_date] - Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.
   *
   * [end_date] - End date for fetching Analytics data. Request can should specify an end date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is yesterday.
   *
   * [metrics] - A comma-separated list of Analytics metrics. E.g., 'ga:visits,ga:pageviews'. At least one metric must be specified.
   *
   * [dimensions] - A comma-separated list of Analytics dimensions. E.g., 'ga:browser,ga:city'.
   *
   * [filters] - A comma-separated list of dimension or metric filters to be applied to Analytics data.
   *
   * [max_results] - The maximum number of entries to include in this feed.
   *
   * [output] - The selected format for the response. Default format is JSON.
   *   Allowed values:
   *     dataTable - Returns the response in Google Charts Data Table format. This is useful in creating visualization using Google Charts.
   *     json - Returns the response in standard JSON format.
   *
   * [samplingLevel] - The desired sampling level.
   *   Allowed values:
   *     DEFAULT - Returns response with a sample size that balances speed and accuracy.
   *     FASTER - Returns a fast response with a smaller sample size.
   *     HIGHER_PRECISION - Returns a more accurate response using a large sample size, but this may result in the response being slower.
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
  async.Future<GaData> get(core.String ids, core.String start_date, core.String end_date, core.String metrics, {core.String dimensions, core.String filters, core.int max_results, core.String output, core.String samplingLevel, core.String segment, core.String sort, core.int start_index, core.Map optParams}) {
    var url = "data/ga";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dimensions != null) queryParams["dimensions"] = dimensions;
    if (end_date == null) paramErrors.add("end_date is required");
    if (end_date != null) queryParams["end-date"] = end_date;
    if (filters != null) queryParams["filters"] = filters;
    if (ids == null) paramErrors.add("ids is required");
    if (ids != null) queryParams["ids"] = ids;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (metrics == null) paramErrors.add("metrics is required");
    if (metrics != null) queryParams["metrics"] = metrics;
    if (output != null && !["dataTable", "json"].contains(output)) {
      paramErrors.add("Allowed values for output: dataTable, json");
    }
    if (output != null) queryParams["output"] = output;
    if (samplingLevel != null && !["DEFAULT", "FASTER", "HIGHER_PRECISION"].contains(samplingLevel)) {
      paramErrors.add("Allowed values for samplingLevel: DEFAULT, FASTER, HIGHER_PRECISION");
    }
    if (samplingLevel != null) queryParams["samplingLevel"] = samplingLevel;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GaData.fromJson(data));
  }
}

class DataMcfResource_ {

  final Client _client;

  DataMcfResource_(Client client) :
      _client = client;

  /**
   * Returns Analytics Multi-Channel Funnels data for a view (profile).
   *
   * [ids] - Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.
   *
   * [start_date] - Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.
   *
   * [end_date] - End date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.
   *
   * [metrics] - A comma-separated list of Multi-Channel Funnels metrics. E.g., 'mcf:totalConversions,mcf:totalConversionValue'. At least one metric must be specified.
   *
   * [dimensions] - A comma-separated list of Multi-Channel Funnels dimensions. E.g., 'mcf:source,mcf:medium'.
   *
   * [filters] - A comma-separated list of dimension or metric filters to be applied to the Analytics data.
   *
   * [max_results] - The maximum number of entries to include in this feed.
   *
   * [samplingLevel] - The desired sampling level.
   *   Allowed values:
   *     DEFAULT - Returns response with a sample size that balances speed and accuracy.
   *     FASTER - Returns a fast response with a smaller sample size.
   *     HIGHER_PRECISION - Returns a more accurate response using a large sample size, but this may result in the response being slower.
   *
   * [sort] - A comma-separated list of dimensions or metrics that determine the sort order for the Analytics data.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<McfData> get(core.String ids, core.String start_date, core.String end_date, core.String metrics, {core.String dimensions, core.String filters, core.int max_results, core.String samplingLevel, core.String sort, core.int start_index, core.Map optParams}) {
    var url = "data/mcf";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dimensions != null) queryParams["dimensions"] = dimensions;
    if (end_date == null) paramErrors.add("end_date is required");
    if (end_date != null) queryParams["end-date"] = end_date;
    if (filters != null) queryParams["filters"] = filters;
    if (ids == null) paramErrors.add("ids is required");
    if (ids != null) queryParams["ids"] = ids;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (metrics == null) paramErrors.add("metrics is required");
    if (metrics != null) queryParams["metrics"] = metrics;
    if (samplingLevel != null && !["DEFAULT", "FASTER", "HIGHER_PRECISION"].contains(samplingLevel)) {
      paramErrors.add("Allowed values for samplingLevel: DEFAULT, FASTER, HIGHER_PRECISION");
    }
    if (samplingLevel != null) queryParams["samplingLevel"] = samplingLevel;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new McfData.fromJson(data));
  }
}

class DataRealtimeResource_ {

  final Client _client;

  DataRealtimeResource_(Client client) :
      _client = client;

  /**
   * Returns real time data for a view (profile).
   *
   * [ids] - Unique table ID for retrieving real time data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.
   *
   * [metrics] - A comma-separated list of real time metrics. E.g., 'ga:activeVisitors'. At least one metric must be specified.
   *
   * [dimensions] - A comma-separated list of real time dimensions. E.g., 'ga:medium,ga:city'.
   *
   * [filters] - A comma-separated list of dimension or metric filters to be applied to real time data.
   *
   * [max_results] - The maximum number of entries to include in this feed.
   *
   * [sort] - A comma-separated list of dimensions or metrics that determine the sort order for real time data.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RealtimeData> get(core.String ids, core.String metrics, {core.String dimensions, core.String filters, core.int max_results, core.String sort, core.Map optParams}) {
    var url = "data/realtime";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dimensions != null) queryParams["dimensions"] = dimensions;
    if (filters != null) queryParams["filters"] = filters;
    if (ids == null) paramErrors.add("ids is required");
    if (ids != null) queryParams["ids"] = ids;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (metrics == null) paramErrors.add("metrics is required");
    if (metrics != null) queryParams["metrics"] = metrics;
    if (sort != null) queryParams["sort"] = sort;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RealtimeData.fromJson(data));
  }
}

class ManagementResource_ {

  final Client _client;

  final ManagementAccountUserLinksResource_ accountUserLinks;
  final ManagementAccountsResource_ accounts;
  final ManagementCustomDataSourcesResource_ customDataSources;
  final ManagementDailyUploadsResource_ dailyUploads;
  final ManagementExperimentsResource_ experiments;
  final ManagementGoalsResource_ goals;
  final ManagementProfileUserLinksResource_ profileUserLinks;
  final ManagementProfilesResource_ profiles;
  final ManagementSegmentsResource_ segments;
  final ManagementUploadsResource_ uploads;
  final ManagementWebpropertiesResource_ webproperties;
  final ManagementWebpropertyUserLinksResource_ webpropertyUserLinks;

  ManagementResource_(Client client) :
      _client = client,
      accountUserLinks = new ManagementAccountUserLinksResource_(client),
      accounts = new ManagementAccountsResource_(client),
      customDataSources = new ManagementCustomDataSourcesResource_(client),
      dailyUploads = new ManagementDailyUploadsResource_(client),
      experiments = new ManagementExperimentsResource_(client),
      goals = new ManagementGoalsResource_(client),
      profileUserLinks = new ManagementProfileUserLinksResource_(client),
      profiles = new ManagementProfilesResource_(client),
      segments = new ManagementSegmentsResource_(client),
      uploads = new ManagementUploadsResource_(client),
      webproperties = new ManagementWebpropertiesResource_(client),
      webpropertyUserLinks = new ManagementWebpropertyUserLinksResource_(client);
}

class ManagementAccountUserLinksResource_ {

  final Client _client;

  ManagementAccountUserLinksResource_(Client client) :
      _client = client;

  /**
   * Removes a user from the given account.
   *
   * [accountId] - Account ID to delete the user link for.
   *
   * [linkId] - Link ID to delete the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String accountId, core.String linkId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/entityUserLinks/{linkId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Adds a new user to the given account.
   *
   * [request] - EntityUserLink to send in this request
   *
   * [accountId] - Account ID to create the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLink> insert(EntityUserLink request, core.String accountId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/entityUserLinks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLink.fromJson(data));
  }

  /**
   * Lists account-user links for a given account.
   *
   * [accountId] - Account ID to retrieve the user links for.
   *
   * [max_results] - The maximum number of account-user links to include in this response.
   *
   * [start_index] - An index of the first account-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLinks> list(core.String accountId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/entityUserLinks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLinks.fromJson(data));
  }

  /**
   * Updates permissions for an existing user on the given account.
   *
   * [request] - EntityUserLink to send in this request
   *
   * [accountId] - Account ID to update the account-user link for.
   *
   * [linkId] - Link ID to update the account-user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLink> update(EntityUserLink request, core.String accountId, core.String linkId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/entityUserLinks/{linkId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLink.fromJson(data));
  }
}

class ManagementAccountsResource_ {

  final Client _client;

  ManagementAccountsResource_(Client client) :
      _client = client;

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
  async.Future<Accounts> list({core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Accounts.fromJson(data));
  }
}

class ManagementCustomDataSourcesResource_ {

  final Client _client;

  ManagementCustomDataSourcesResource_(Client client) :
      _client = client;

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
  async.Future<CustomDataSources> list(core.String accountId, core.String webPropertyId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomDataSources.fromJson(data));
  }
}

class ManagementDailyUploadsResource_ {

  final Client _client;

  ManagementDailyUploadsResource_(Client client) :
      _client = client;

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
  async.Future<core.Map> delete(core.String accountId, core.String webPropertyId, core.String customDataSourceId, core.String date, core.String type, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads/{date}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<DailyUploads> list(core.String accountId, core.String webPropertyId, core.String customDataSourceId, core.String start_date, core.String end_date, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DailyUploads.fromJson(data));
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
  async.Future<DailyUploadAppend> upload(core.String accountId, core.String webPropertyId, core.String customDataSourceId, core.String date, core.int appendNumber, core.String type, {core.String content, core.String contentType, core.bool reset, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads/{date}/uploads";
    var uploadUrl = "/upload/analytics/v3/management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/dailyUploads/{date}/uploads";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new DailyUploadAppend.fromJson(data));
  }
}

class ManagementExperimentsResource_ {

  final Client _client;

  ManagementExperimentsResource_(Client client) :
      _client = client;

  /**
   * Delete an experiment.
   *
   * [accountId] - Account ID to which the experiment belongs
   *
   * [webPropertyId] - Web property ID to which the experiment belongs
   *
   * [profileId] - View (Profile) ID to which the experiment belongs
   *
   * [experimentId] - ID of the experiment to delete
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String accountId, core.String webPropertyId, core.String profileId, core.String experimentId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (experimentId == null) paramErrors.add("experimentId is required");
    if (experimentId != null) urlParams["experimentId"] = experimentId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns an experiment to which the user has access.
   *
   * [accountId] - Account ID to retrieve the experiment for.
   *
   * [webPropertyId] - Web property ID to retrieve the experiment for.
   *
   * [profileId] - View (Profile) ID to retrieve the experiment for.
   *
   * [experimentId] - Experiment ID to retrieve the experiment for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Experiment> get(core.String accountId, core.String webPropertyId, core.String profileId, core.String experimentId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (experimentId == null) paramErrors.add("experimentId is required");
    if (experimentId != null) urlParams["experimentId"] = experimentId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Experiment.fromJson(data));
  }

  /**
   * Create a new experiment.
   *
   * [request] - Experiment to send in this request
   *
   * [accountId] - Account ID to create the experiment for.
   *
   * [webPropertyId] - Web property ID to create the experiment for.
   *
   * [profileId] - View (Profile) ID to create the experiment for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Experiment> insert(Experiment request, core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Experiment.fromJson(data));
  }

  /**
   * Lists experiments to which the user has access.
   *
   * [accountId] - Account ID to retrieve experiments for.
   *
   * [webPropertyId] - Web property ID to retrieve experiments for.
   *
   * [profileId] - View (Profile) ID to retrieve experiments for.
   *
   * [max_results] - The maximum number of experiments to include in this response.
   *
   * [start_index] - An index of the first experiment to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Experiments> list(core.String accountId, core.String webPropertyId, core.String profileId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Experiments.fromJson(data));
  }

  /**
   * Update an existing experiment. This method supports patch semantics.
   *
   * [request] - Experiment to send in this request
   *
   * [accountId] - Account ID of the experiment to update.
   *
   * [webPropertyId] - Web property ID of the experiment to update.
   *
   * [profileId] - View (Profile) ID of the experiment to update.
   *
   * [experimentId] - Experiment ID of the experiment to update.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Experiment> patch(Experiment request, core.String accountId, core.String webPropertyId, core.String profileId, core.String experimentId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (experimentId == null) paramErrors.add("experimentId is required");
    if (experimentId != null) urlParams["experimentId"] = experimentId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Experiment.fromJson(data));
  }

  /**
   * Update an existing experiment.
   *
   * [request] - Experiment to send in this request
   *
   * [accountId] - Account ID of the experiment to update.
   *
   * [webPropertyId] - Web property ID of the experiment to update.
   *
   * [profileId] - View (Profile) ID of the experiment to update.
   *
   * [experimentId] - Experiment ID of the experiment to update.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Experiment> update(Experiment request, core.String accountId, core.String webPropertyId, core.String profileId, core.String experimentId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/experiments/{experimentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (experimentId == null) paramErrors.add("experimentId is required");
    if (experimentId != null) urlParams["experimentId"] = experimentId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Experiment.fromJson(data));
  }
}

class ManagementGoalsResource_ {

  final Client _client;

  ManagementGoalsResource_(Client client) :
      _client = client;

  /**
   * Gets a goal to which the user has access.
   *
   * [accountId] - Account ID to retrieve the goal for.
   *
   * [webPropertyId] - Web property ID to retrieve the goal for.
   *
   * [profileId] - View (Profile) ID to retrieve the goal for.
   *
   * [goalId] - Goal ID to retrieve the goal for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Goal> get(core.String accountId, core.String webPropertyId, core.String profileId, core.String goalId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (goalId == null) paramErrors.add("goalId is required");
    if (goalId != null) urlParams["goalId"] = goalId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Goal.fromJson(data));
  }

  /**
   * Create a new goal.
   *
   * [request] - Goal to send in this request
   *
   * [accountId] - Account ID to create the goal for.
   *
   * [webPropertyId] - Web property ID to create the goal for.
   *
   * [profileId] - View (Profile) ID to create the goal for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Goal> insert(Goal request, core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Goal.fromJson(data));
  }

  /**
   * Lists goals to which the user has access.
   *
   * [accountId] - Account ID to retrieve goals for. Can either be a specific account ID or '~all', which refers to all the accounts that user has access to.
   *
   * [webPropertyId] - Web property ID to retrieve goals for. Can either be a specific web property ID or '~all', which refers to all the web properties that user has access to.
   *
   * [profileId] - View (Profile) ID to retrieve goals for. Can either be a specific view (profile) ID or '~all', which refers to all the views (profiles) that user has access to.
   *
   * [max_results] - The maximum number of goals to include in this response.
   *
   * [start_index] - An index of the first goal to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Goals> list(core.String accountId, core.String webPropertyId, core.String profileId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Goals.fromJson(data));
  }

  /**
   * Updates an existing view (profile). This method supports patch semantics.
   *
   * [request] - Goal to send in this request
   *
   * [accountId] - Account ID to update the goal.
   *
   * [webPropertyId] - Web property ID to update the goal.
   *
   * [profileId] - View (Profile) ID to update the goal.
   *
   * [goalId] - Index of the goal to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Goal> patch(Goal request, core.String accountId, core.String webPropertyId, core.String profileId, core.String goalId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (goalId == null) paramErrors.add("goalId is required");
    if (goalId != null) urlParams["goalId"] = goalId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Goal.fromJson(data));
  }

  /**
   * Updates an existing view (profile).
   *
   * [request] - Goal to send in this request
   *
   * [accountId] - Account ID to update the goal.
   *
   * [webPropertyId] - Web property ID to update the goal.
   *
   * [profileId] - View (Profile) ID to update the goal.
   *
   * [goalId] - Index of the goal to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Goal> update(Goal request, core.String accountId, core.String webPropertyId, core.String profileId, core.String goalId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/goals/{goalId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (goalId == null) paramErrors.add("goalId is required");
    if (goalId != null) urlParams["goalId"] = goalId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Goal.fromJson(data));
  }
}

class ManagementProfileUserLinksResource_ {

  final Client _client;

  ManagementProfileUserLinksResource_(Client client) :
      _client = client;

  /**
   * Removes a user from the given view (profile).
   *
   * [accountId] - Account ID to delete the user link for.
   *
   * [webPropertyId] - Web Property ID to delete the user link for.
   *
   * [profileId] - View (Profile) ID to delete the user link for.
   *
   * [linkId] - Link ID to delete the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String accountId, core.String webPropertyId, core.String profileId, core.String linkId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Adds a new user to the given view (profile).
   *
   * [request] - EntityUserLink to send in this request
   *
   * [accountId] - Account ID to create the user link for.
   *
   * [webPropertyId] - Web Property ID to create the user link for.
   *
   * [profileId] - View (Profile) ID to create the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLink> insert(EntityUserLink request, core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLink.fromJson(data));
  }

  /**
   * Lists profile-user links for a given view (profile).
   *
   * [accountId] - Account ID which the given view (profile) belongs to.
   *
   * [webPropertyId] - Web Property ID which the given view (profile) belongs to.
   *
   * [profileId] - View (Profile) ID to retrieve the profile-user links for
   *
   * [max_results] - The maximum number of profile-user links to include in this response.
   *
   * [start_index] - An index of the first profile-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLinks> list(core.String accountId, core.String webPropertyId, core.String profileId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLinks.fromJson(data));
  }

  /**
   * Updates permissions for an existing user on the given view (profile).
   *
   * [request] - EntityUserLink to send in this request
   *
   * [accountId] - Account ID to update the user link for.
   *
   * [webPropertyId] - Web Property ID to update the user link for.
   *
   * [profileId] - View (Profile ID) to update the user link for.
   *
   * [linkId] - Link ID to update the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLink> update(EntityUserLink request, core.String accountId, core.String webPropertyId, core.String profileId, core.String linkId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}/entityUserLinks/{linkId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLink.fromJson(data));
  }
}

class ManagementProfilesResource_ {

  final Client _client;

  ManagementProfilesResource_(Client client) :
      _client = client;

  /**
   * Deletes a view (profile).
   *
   * [accountId] - Account ID to delete the view (profile) for.
   *
   * [webPropertyId] - Web property ID to delete the view (profile) for.
   *
   * [profileId] - ID of the view (profile) to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets a view (profile) to which the user has access.
   *
   * [accountId] - Account ID to retrieve the goal for.
   *
   * [webPropertyId] - Web property ID to retrieve the goal for.
   *
   * [profileId] - View (Profile) ID to retrieve the goal for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Profile> get(core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Profile.fromJson(data));
  }

  /**
   * Create a new view (profile).
   *
   * [request] - Profile to send in this request
   *
   * [accountId] - Account ID to create the view (profile) for.
   *
   * [webPropertyId] - Web property ID to create the view (profile) for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Profile> insert(Profile request, core.String accountId, core.String webPropertyId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Profile.fromJson(data));
  }

  /**
   * Lists views (profiles) to which the user has access.
   *
   * [accountId] - Account ID for the view (profiles) to retrieve. Can either be a specific account ID or '~all', which refers to all the accounts to which the user has access.
   *
   * [webPropertyId] - Web property ID for the views (profiles) to retrieve. Can either be a specific web property ID or '~all', which refers to all the web properties to which the user has access.
   *
   * [max_results] - The maximum number of views (profiles) to include in this response.
   *
   * [start_index] - An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Profiles> list(core.String accountId, core.String webPropertyId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Profiles.fromJson(data));
  }

  /**
   * Updates an existing view (profile). This method supports patch semantics.
   *
   * [request] - Profile to send in this request
   *
   * [accountId] - Account ID to which the view (profile) belongs
   *
   * [webPropertyId] - Web property ID to which the view (profile) belongs
   *
   * [profileId] - ID of the view (profile) to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Profile> patch(Profile request, core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Profile.fromJson(data));
  }

  /**
   * Updates an existing view (profile).
   *
   * [request] - Profile to send in this request
   *
   * [accountId] - Account ID to which the view (profile) belongs
   *
   * [webPropertyId] - Web property ID to which the view (profile) belongs
   *
   * [profileId] - ID of the view (profile) to be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Profile> update(Profile request, core.String accountId, core.String webPropertyId, core.String profileId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/profiles/{profileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Profile.fromJson(data));
  }
}

class ManagementSegmentsResource_ {

  final Client _client;

  ManagementSegmentsResource_(Client client) :
      _client = client;

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
  async.Future<Segments> list({core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/segments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Segments.fromJson(data));
  }
}

class ManagementUploadsResource_ {

  final Client _client;

  ManagementUploadsResource_(Client client) :
      _client = client;

  /**
   * Delete data associated with a previous upload.
   *
   * [request] - AnalyticsDataimportDeleteUploadDataRequest to send in this request
   *
   * [accountId] - Account Id for the uploads to be deleted.
   *
   * [webPropertyId] - Web property Id for the uploads to be deleted.
   *
   * [customDataSourceId] - Custom data source Id for the uploads to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> deleteUploadData(AnalyticsDataimportDeleteUploadDataRequest request, core.String accountId, core.String webPropertyId, core.String customDataSourceId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/deleteUploadData";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * List uploads to which the user has access.
   *
   * [accountId] - Account Id for the upload to retrieve.
   *
   * [webPropertyId] - Web property Id for the upload to retrieve.
   *
   * [customDataSourceId] - Custom data source Id for upload to retrieve.
   *
   * [uploadId] - Upload Id to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Upload> get(core.String accountId, core.String webPropertyId, core.String customDataSourceId, core.String uploadId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads/{uploadId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
    if (uploadId == null) paramErrors.add("uploadId is required");
    if (uploadId != null) urlParams["uploadId"] = uploadId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Upload.fromJson(data));
  }

  /**
   * List uploads to which the user has access.
   *
   * [accountId] - Account Id for the uploads to retrieve.
   *
   * [webPropertyId] - Web property Id for the uploads to retrieve.
   *
   * [customDataSourceId] - Custom data source Id for uploads to retrieve.
   *
   * [max_results] - The maximum number of uploads to include in this response.
   *   Minimum: 1
   *
   * [start_index] - A 1-based index of the first upload to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Uploads> list(core.String accountId, core.String webPropertyId, core.String customDataSourceId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Uploads.fromJson(data));
  }

  /**
   * Upload data for a custom data source.
   *
   * [accountId] - Account Id associated with the upload.
   *
   * [webPropertyId] - Web property UA-string associated with the upload.
   *
   * [customDataSourceId] - Custom data source Id to which the data being uploaded belongs.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Upload> uploadData(core.String accountId, core.String webPropertyId, core.String customDataSourceId, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads";
    var uploadUrl = "/upload/analytics/v3/management/accounts/{accountId}/webproperties/{webPropertyId}/customDataSources/{customDataSourceId}/uploads";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (customDataSourceId == null) paramErrors.add("customDataSourceId is required");
    if (customDataSourceId != null) urlParams["customDataSourceId"] = customDataSourceId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Upload.fromJson(data));
  }
}

class ManagementWebpropertiesResource_ {

  final Client _client;

  ManagementWebpropertiesResource_(Client client) :
      _client = client;

  /**
   * Gets a web property to which the user has access.
   *
   * [accountId] - Account ID to retrieve the web property for.
   *
   * [webPropertyId] - ID to retrieve the web property for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Webproperty> get(core.String accountId, core.String webPropertyId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Webproperty.fromJson(data));
  }

  /**
   * Create a new property if the account has fewer than 20 properties. Web properties are visible in the Google Analytics interface only if they have at least one profile.
   *
   * [request] - Webproperty to send in this request
   *
   * [accountId] - Account ID to create the web property for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Webproperty> insert(Webproperty request, core.String accountId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Webproperty.fromJson(data));
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
  async.Future<Webproperties> list(core.String accountId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Webproperties.fromJson(data));
  }

  /**
   * Updates an existing web property. This method supports patch semantics.
   *
   * [request] - Webproperty to send in this request
   *
   * [accountId] - Account ID to which the web property belongs
   *
   * [webPropertyId] - Web property ID
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Webproperty> patch(Webproperty request, core.String accountId, core.String webPropertyId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Webproperty.fromJson(data));
  }

  /**
   * Updates an existing web property.
   *
   * [request] - Webproperty to send in this request
   *
   * [accountId] - Account ID to which the web property belongs
   *
   * [webPropertyId] - Web property ID
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Webproperty> update(Webproperty request, core.String accountId, core.String webPropertyId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Webproperty.fromJson(data));
  }
}

class ManagementWebpropertyUserLinksResource_ {

  final Client _client;

  ManagementWebpropertyUserLinksResource_(Client client) :
      _client = client;

  /**
   * Removes a user from the given web property.
   *
   * [accountId] - Account ID to delete the user link for.
   *
   * [webPropertyId] - Web Property ID to delete the user link for.
   *
   * [linkId] - Link ID to delete the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String accountId, core.String webPropertyId, core.String linkId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Adds a new user to the given web property.
   *
   * [request] - EntityUserLink to send in this request
   *
   * [accountId] - Account ID to create the user link for.
   *
   * [webPropertyId] - Web Property ID to create the user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLink> insert(EntityUserLink request, core.String accountId, core.String webPropertyId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLink.fromJson(data));
  }

  /**
   * Lists webProperty-user links for a given web property.
   *
   * [accountId] - Account ID which the given web property belongs to.
   *
   * [webPropertyId] - Web Property ID for the webProperty-user links to retrieve.
   *
   * [max_results] - The maximum number of webProperty-user Links to include in this response.
   *
   * [start_index] - An index of the first webProperty-user link to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLinks> list(core.String accountId, core.String webPropertyId, {core.int max_results, core.int start_index, core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLinks.fromJson(data));
  }

  /**
   * Updates permissions for an existing user on the given web property.
   *
   * [request] - EntityUserLink to send in this request
   *
   * [accountId] - Account ID to update the account-user link for.
   *
   * [webPropertyId] - Web property ID to update the account-user link for.
   *
   * [linkId] - Link ID to update the account-user link for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EntityUserLink> update(EntityUserLink request, core.String accountId, core.String webPropertyId, core.String linkId, {core.Map optParams}) {
    var url = "management/accounts/{accountId}/webproperties/{webPropertyId}/entityUserLinks/{linkId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (linkId == null) paramErrors.add("linkId is required");
    if (linkId != null) urlParams["linkId"] = linkId;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new EntityUserLink.fromJson(data));
  }
}

class MetadataResource_ {

  final Client _client;

  final MetadataColumnsResource_ columns;

  MetadataResource_(Client client) :
      _client = client,
      columns = new MetadataColumnsResource_(client);
}

class MetadataColumnsResource_ {

  final Client _client;

  MetadataColumnsResource_(Client client) :
      _client = client;

  /**
   * Lists all columns for a report type
   *
   * [reportType] - Report type. Allowed Values: 'ga'. Where 'ga' corresponds to the Core Reporting API
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Columns> list(core.String reportType, {core.Map optParams}) {
    var url = "metadata/{reportType}/columns";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (reportType == null) paramErrors.add("reportType is required");
    if (reportType != null) urlParams["reportType"] = reportType;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Columns.fromJson(data));
  }
}

