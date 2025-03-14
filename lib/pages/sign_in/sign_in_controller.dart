import 'package:socialize_application/import.dart';

class SignInController extends BaseController {
  final formKey = GlobalKey<FormState>();
  RxBool firstValidation = false.obs;
  RxBool autoLogin = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<PopupMenuButtonState<int>> glKey = GlobalKey();

  void moveToForgotPassword() {
    // Get.toNamed(AppRouter.routerForgotPassword);
  }

  void moveToSignUp() {
    // Get.offNamed(AppRouter.routerSignUp);
  }

  void handleChangeCheckBox(bool value) {
    autoLogin.value = value;
  }

  bool validation() {
    if (formKey.currentState?.validate() == true) {
      formKey.currentState!.save();
    }
    if (!firstValidation.value) {
      firstValidation.value = true;
    }
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      return false;
    }
    return formKey.currentState?.validate() ?? false;
  }

  String? checkEmailValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredEmail.tr;
    }
    return null;
  }

  String? checkPasswordValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredPassword.tr;
    }
    return null;
  }
}
