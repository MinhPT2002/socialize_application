import 'package:socialize_application/global/app_router.dart';
import 'package:socialize_application/import.dart';

class SignUpController extends BaseController {
  final formKey = GlobalKey<FormState>();
  RxBool firstValidation = false.obs;
  RxBool autoLogin = false.obs;
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final GlobalKey<PopupMenuButtonState<int>> glKey = GlobalKey();

  void signUp() {
    if (validation()) {
      Get.toNamed(AppRouter.routerSignIn);
    }
  }

  void moveToSignIn() {
    Get.offNamed(AppRouter.routerSignIn);
  }

  bool validation() {
    if (formKey.currentState?.validate() == true) {
      formKey.currentState!.save();
    }
    if (!firstValidation.value) {
      firstValidation.value = true;
    }
    if (emailController.text.trim().isEmpty ||
        nameController.text.trim().isEmpty ||
        usernameController.text.trim().isEmpty ||
        confirmPasswordController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      return false;
    }
    return formKey.currentState?.validate() ?? false;
  }

  String? checkEmailValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredEmail.tr;
    }
    if (!value!.trim().validateEmail()) {
      return LocaleKeys.emailWrongFormat.tr;
    }
    if (value.trim().contains('+')) {
      return LocaleKeys.emailContain.tr;
    }
    if (value.length > 255) {
      return LocaleKeys.emailLess255.tr;
    }
    return null;
  }

  String? checkNameValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredName.tr;
    }
    return null;
  }

  String? checkUsernameValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredUsername.tr;
    }
    return null;
  }

  String? checkPasswordValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredPassword.tr;
    }
    if (value!.length < 8) {
      return LocaleKeys.passwordGreater.tr;
    }
    if (value.length > 40) {
      return LocaleKeys.passwordLess.tr;
    }
    if (!value.validatePassword()) {
      return LocaleKeys.passwordFormat.tr;
    }
    return null;
  }

  String? checkConfirmPasswordValidator(String? value) {
    if (isNullOrEmpty(value?.trim())) {
      return LocaleKeys.requiredConfirmPassword.tr;
    }
    if (value != passwordController.text.trim()) {
      return LocaleKeys.confirmPasswordNotMatch.tr;
    }
    return null;
  }
}
