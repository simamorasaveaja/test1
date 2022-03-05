import 'package:firebase_analytics/firebase_analytics.dart';

class FA {

  FA._();

  static const String _event_screen_view = 'SCREEN_VIEW';

  //PARAM
  static const String _event_screen_name = 'SCREEN_NAME';
  static const String _event_screen_class = 'SCREEN_CLASS';

  static void logEventScreenView(String screenName, String screenClass) {
    FirebaseAnalytics().logEvent(name: _event_screen_view, parameters: {
      _event_screen_name : screenName,
      _event_screen_class: screenClass
    });
  }

}
