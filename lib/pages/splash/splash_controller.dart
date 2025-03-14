import 'package:socialize_application/global/app_router.dart';
import 'package:socialize_application/import.dart';

class SplashController extends BaseController {
  void moveToSignIn() {
    Get.offAllNamed(AppRouter.routerSignIn);
  }
}
