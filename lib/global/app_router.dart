import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/sign_in/sign_in_page.dart';
import 'package:socialize_application/pages/splash/splash_page.dart';

class AppRouter {
  static const String routerSplash = '/splash';
  static const String routerSignIn = '/sign_in';

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
    GetPage<SignInPage>(
      name: routerSignIn,
      page: () => SignInPage(),
      curve: curve,
      transition: transition,
      transitionDuration: transitionDuration,
    ),
  ];
}
