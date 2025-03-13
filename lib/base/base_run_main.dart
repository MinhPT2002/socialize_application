import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:socialize_application/base/cache_manager.dart';
import 'package:socialize_application/base/locator.dart';
import 'package:socialize_application/import.dart';
import 'package:socialize_application/main.dart';

class BaseRunMain with CacheManager {
  static Future<void> runMainApp() async {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      GestureBinding.instance.resamplingEnabled = true;
      setSystemUIOverlayStyle();
      await ScreenUtil.ensureScreenSize();
      // await Firebase.initializeApp();
      // FirebaseMessagingService().setupFirebase();
      // FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
      // await GetStorage.init();
      // await RemoteConfigService().setupRemoteConfig();
      usePathUrlStrategy();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );
      // AppConfig.setEnvironment(valueConfig: config);
      await setupLocator();
      runApp(const MyApp());
    }, (Object error, StackTrace stackTrace) {});
  }
}

// @pragma('vm:entry-point')
// Future<void> _backgroundHandler(RemoteMessage message) async {
//   AppLog.print('HANDLE BACKGROUND SERVICE $message ');
// }
