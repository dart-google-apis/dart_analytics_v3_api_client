part of analytics_v3_api_client;

class DataResource_ extends Resource {

  DataGaResource_ _ga;
  DataGaResource_ get ga => _ga;
  DataMcfResource_ _mcf;
  DataMcfResource_ get mcf => _mcf;

  DataResource_(Client client) : super(client) {
  _ga = new DataGaResource_(client);
  _mcf = new DataMcfResource_(client);
  }
}

class DataGaResource_ extends Resource {

  DataGaResource_(Client client) : super(client) {
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
  async.Future<GaData> get(core.String ids, core.String start_date, core.String end_date, core.String metrics, {core.String dimensions, core.String filters, core.int max_results, core.String segment, core.String sort, core.int start_index, core.Map optParams}) {
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

class DataMcfResource_ extends Resource {

  DataMcfResource_(Client client) : super(client) {
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
  async.Future<McfData> get(core.String ids, core.String start_date, core.String end_date, core.String metrics, {core.String dimensions, core.String filters, core.int max_results, core.String sort, core.int start_index, core.Map optParams}) {
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

class ManagementResource_ extends Resource {

  ManagementAccountsResource_ _accounts;
  ManagementAccountsResource_ get accounts => _accounts;
  ManagementCustomDataSourcesResource_ _customDataSources;
  ManagementCustomDataSourcesResource_ get customDataSources => _customDataSources;
  ManagementDailyUploadsResource_ _dailyUploads;
  ManagementDailyUploadsResource_ get dailyUploads => _dailyUploads;
  ManagementExperimentsResource_ _experiments;
  ManagementExperimentsResource_ get experiments => _experiments;
  ManagementGoalsResource_ _goals;
  ManagementGoalsResource_ get goals => _goals;
  ManagementProfilesResource_ _profiles;
  ManagementProfilesResource_ get profiles => _profiles;
  ManagementSegmentsResource_ _segments;
  ManagementSegmentsResource_ get segments => _segments;
  ManagementWebpropertiesResource_ _webproperties;
  ManagementWebpropertiesResource_ get webproperties => _webproperties;

  ManagementResource_(Client client) : super(client) {
  _accounts = new ManagementAccountsResource_(client);
  _customDataSources = new ManagementCustomDataSourcesResource_(client);
  _dailyUploads = new ManagementDailyUploadsResource_(client);
  _experiments = new ManagementExperimentsResource_(client);
  _goals = new ManagementGoalsResource_(client);
  _profiles = new ManagementProfilesResource_(client);
  _segments = new ManagementSegmentsResource_(client);
  _webproperties = new ManagementWebpropertiesResource_(client);
  }
}

class ManagementAccountsResource_ extends Resource {

  ManagementAccountsResource_(Client client) : super(client) {
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

class ManagementCustomDataSourcesResource_ extends Resource {

  ManagementCustomDataSourcesResource_(Client client) : super(client) {
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

class ManagementDailyUploadsResource_ extends Resource {

  ManagementDailyUploadsResource_(Client client) : super(client) {
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
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new DailyUploadAppend.fromJson(data));
  }
}

class ManagementExperimentsResource_ extends Resource {

  ManagementExperimentsResource_(Client client) : super(client) {
  }

  /**
   * Delete an experiment.
   *
   * [accountId] - Account ID to which the experiment belongs
   *
   * [webPropertyId] - Web property ID to which the experiment belongs
   *
   * [profileId] - Profile ID to which the experiment belongs
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
   * [profileId] - Profile ID to retrieve the experiment for.
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
   * [profileId] - Profile ID to create the experiment for.
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
   * [profileId] - Profile ID to retrieve experiments for.
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
   * [profileId] - Profile ID of the experiment to update.
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
   * [profileId] - Profile ID of the experiment to update.
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

class ManagementGoalsResource_ extends Resource {

  ManagementGoalsResource_(Client client) : super(client) {
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
}

class ManagementProfilesResource_ extends Resource {

  ManagementProfilesResource_(Client client) : super(client) {
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
}

class ManagementSegmentsResource_ extends Resource {

  ManagementSegmentsResource_(Client client) : super(client) {
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

class ManagementWebpropertiesResource_ extends Resource {

  ManagementWebpropertiesResource_(Client client) : super(client) {
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
}

