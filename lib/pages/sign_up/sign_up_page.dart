import 'package:flutter/gestures.dart';
import 'package:socialize_application/common/widget_components/button/widget_button.dart';
import 'package:socialize_application/common/widget_components/input_field/widget_input_text.dart';
import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/sign_up/sign_up_controller.dart';

class SignUpPage extends BaseScreen<SignUpController> {
  SignUpPage({super.key});

  @override
  Widget builder() {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 30.h, top: 120.h, left: 20.r, right: 20.r),
                  child: Text(
                    LocaleKeys.startHere.tr,
                    style: textStyle.regular(
                      size: 24,
                      color: color.black,
                    ),
                  ),
                ),
                _buildBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r),
        child: Column(
          children: [
            _buildForm(),
            WidgetButton(
              title: LocaleKeys.signUp.tr,
              onClick: controller.signUp,
              width: 230,
              margin: EdgeInsets.symmetric(vertical: 40.h),
            ),
            _signInWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Obx(() => Form(
          key: controller.formKey,
          autovalidateMode: controller.firstValidation.value
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              _buildName(),
              _buildEmail(),
              _buildUsername(),
              _buildPassword(),
              _buildConfirmPassword(),
            ],
          ),
        ));
  }

  Widget _buildName() {
    return WidgetInputText(
      marginTop: 40.h,
      hintText: LocaleKeys.enterName.tr,
      title: LocaleKeys.name.tr,
      iconLeading: AssetIcons.iconUser,
      controller: controller.emailController,
      validator: controller.checkNameValidator,
    );
  }

  Widget _buildEmail() {
    return WidgetInputText(
      marginTop: 40.h,
      hintText: LocaleKeys.enterEmail.tr,
      title: LocaleKeys.email.tr,
      iconLeading: AssetIcons.iconUser,
      controller: controller.emailController,
      validator: controller.checkEmailValidator,
    );
  }

  Widget _buildUsername() {
    return WidgetInputText(
      marginTop: 40.h,
      hintText: LocaleKeys.enterUsername.tr,
      title: LocaleKeys.username.tr,
      iconLeading: AssetIcons.iconUser,
      controller: controller.emailController,
      validator: controller.checkUsernameValidator,
    );
  }

  Widget _buildPassword() {
    return WidgetInputText(
      hintText: LocaleKeys.hintTextPassword.tr,
      title: LocaleKeys.password.tr,
      iconLeading: AssetIcons.iconLock,
      obscureText: true,
      controller: controller.passwordController,
      validator: controller.checkPasswordValidator,
    );
  }

  Widget _buildConfirmPassword() {
    return WidgetInputText(
      hintText: LocaleKeys.hintTextConfirmPassword.tr,
      title: LocaleKeys.confirmPassword.tr,
      iconLeading: AssetIcons.iconLock,
      obscureText: true,
      controller: controller.passwordController,
      validator: controller.checkConfirmPasswordValidator,
    );
  }

  Widget _signInWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: '${LocaleKeys.alreadyHaveAccount.tr}   ',
              style: textStyle.bold(size: 16, color: color.black),
            ),
            TextSpan(
              text: LocaleKeys.login.tr,
              style: textStyle.bold(
                  size: 16,
                  decoration: TextDecoration.underline,
                  color: color.mainColor),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  controller.moveToSignIn();
                },
            ),
          ],
        ),
      ),
    );
  }

  @override
  SignUpController? putController() => SignUpController();
}
