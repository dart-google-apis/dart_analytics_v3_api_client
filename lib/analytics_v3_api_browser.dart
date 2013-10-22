library analytics_v3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_analytics_v3_api/src/browser_client.dart';
import "package:google_analytics_v3_api/analytics_v3_api_client.dart";

/** View and manage your Google Analytics data */
class Analytics extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your Google Analytics data */
  static const String ANALYTICS_SCOPE = "https://www.googleapis.com/auth/analytics";

  /** OAuth Scope2: New service: https://www.googleapis.com/auth/analytics.edit */
  static const String ANALYTICS_EDIT_SCOPE = "https://www.googleapis.com/auth/analytics.edit";

  /** OAuth Scope2: Manage Google Analytics Account users by email address */
  static const String ANALYTICS_MANAGE_USERS_SCOPE = "https://www.googleapis.com/auth/analytics.manage.users";

  /** OAuth Scope2: View your Google Analytics data */
  static const String ANALYTICS_READONLY_SCOPE = "https://www.googleapis.com/auth/analytics.readonly";

  final oauth.OAuth2 auth;

  Analytics([oauth.OAuth2 this.auth]);
}
