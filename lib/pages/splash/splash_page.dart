import 'package:socialize_application/common/widget_components/button/widget_button.dart';
import 'package:socialize_application/generated/locales.g.dart';
import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/splash/splash_controller.dart';

class SplashPage extends BaseScreen<SplashController> with BaseMixin {
  SplashPage({super.key});

  @override
  Widget builder() {
    return Scaffold(
      backgroundColor: color.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: ClipPath(
              clipper: MyClipper(),
              child: Image.asset(AssetImages.imageSplash, fit: BoxFit.fitWidth),
            ),
          ),
          Positioned(
            top: 155,
            left: 0,
            right: 0,
            child: Image.asset(AssetImages.splashHeader),
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  LocaleKeys.splashText.tr,
                  style: textStyle.regular(size: 20, color: color.color003972),
                ),
                WidgetButton(
                  title: LocaleKeys.gestStarted.tr,
                  onClick: () {},
                  margin:
                      EdgeInsets.symmetric(horizontal: 80.r, vertical: 50.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  SplashController? putController() => SplashController();
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.55); // Nâng lên một chút
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.45,
        size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.55, size.width, size.height * 0.4);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
