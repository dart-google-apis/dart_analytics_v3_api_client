library analytics_v3_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_analytics_v3_api/src/cloud_api_console.dart';

import "package:google_analytics_v3_api/analytics_v3_api_client.dart";

/** View and manage your Google Analytics data */
class Analytics extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your Google Analytics data */
  static const String ANALYTICS_SCOPE = "https://www.googleapis.com/auth/analytics";

  /** OAuth Scope2: View your Google Analytics data */
  static const String ANALYTICS_READONLY_SCOPE = "https://www.googleapis.com/auth/analytics.readonly";

  final oauth2.OAuth2Console auth;

  Analytics([oauth2.OAuth2Console this.auth]);
}
