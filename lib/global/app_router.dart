import 'package:socialize_application/import.dart';

class AppRouter {
  static const String routerSplash = '/splash';

  static const curve = Curves.fastOutSlowIn;
  static var transition =
      GetPlatform.isAndroid ? Transition.native : Transition.cupertino;
  static const transitionDuration = Duration(milliseconds: 300);

  // Declare Pages

  static List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
    GetPage<SplashPage>(
      name: routerSplash,
      page: () => SplashPage(),
      curve: curve,
      transition: transition,
      transitionDuration: transitionDuration,
    ),
  ];
}
