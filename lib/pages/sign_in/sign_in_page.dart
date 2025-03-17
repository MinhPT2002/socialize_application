import 'package:socialize_application/common/widget_components/button/widget_button.dart';
import 'package:socialize_application/common/widget_components/input_field/widget_input_text.dart';
import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/sign_in/sign_in_controller.dart';

class SignInPage extends BaseScreen<SignInController> {
  SignInPage({super.key});

  @override
  Widget builder() {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: 30.h, top: 120.h, left: 20.r, right: 20.r),
                child: Text(
                  LocaleKeys.signInText.tr,
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
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r),
        child: Column(
          children: [
            _buildForm(),
            _buildForgotPassword(),
            WidgetButton(
              title: LocaleKeys.login.tr,
              onClick: controller.handleSignIn,
              width: 230,
              margin: EdgeInsets.symmetric(vertical: 40.h),
            ),
            _bottomWidget()
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
              _buildEmail(),
              _buildPassword(),
            ],
          ),
        ));
  }

  Widget _buildEmail() {
    return WidgetInputText(
      marginTop: 40.h,
      hintText: LocaleKeys.hintTextEmail.tr,
      title: LocaleKeys.emailOrUsername.tr,
      iconLeading: AssetIcons.iconUser,
      controller: controller.emailController,
      validator: controller.checkEmailValidator,
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

  Widget _buildForgotPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: controller.moveToForgotPassword,
            child: Text(
              LocaleKeys.forgotPassword.tr,
              style: textStyle.bold(
                size: 16,
                color: color.mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomWidget() {
    return Column(
      children: [_signUp(), _otherSignUp()],
    );
  }

  Widget _signUp() {
    return Column(
      children: [
        GestureDetector(
          onTap: controller.moveToSignUp,
          child: Text(
            LocaleKeys.createAccount.tr,
            style: textStyle.regular(size: 14, color: color.color1E60A2),
          ),
        )
      ],
    );
  }

  Widget _otherSignUp() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            LocaleKeys.or.tr,
            style: textStyle.regular(size: 14, color: color.black),
          ),
        ),
        Text(
          LocaleKeys.signUpUsing.tr,
          style: textStyle.regular(size: 14, color: color.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _socialWidget(icon: AssetIcons.iconApple),
            _socialWidget(icon: AssetIcons.iconGoogle),
          ],
        )
      ],
    );
  }

  Widget _socialWidget({Function()? onTap, required String icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 10.r, right: 10.r),
        child: SvgPicture.asset(
          icon,
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  @override
  SignInController? putController() => SignInController();
}
