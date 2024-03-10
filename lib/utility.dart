import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;

void cprint(dynamic data,
    {String? errorIn, String? event, String label = 'Log'}) {
  /// Print logs only in development mode
  if (kDebugMode) {
    if (errorIn != null) {
      print(
          '****************************** error ******************************');
      developer.log('[Error]',
          time: DateTime.now(), error: data, name: errorIn);
      print(
          '****************************** error ******************************');
    } else if (data != null) {
      developer.log(data, time: DateTime.now(), name: label);
    }
    if (event != null) {
      logEvent(event, parameter: {});
    }
  }
}

void logEvent(String event, {Map<String, dynamic>? parameter}) {
  // final kAnalytics = FirebaseAnalytics.instance;
  // kReleaseMode
  // ? kAnalytics.logEvent(name: event, parameters: parameter)
  // : print("[EVENT]: $event");
}
