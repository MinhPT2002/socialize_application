import 'package:flutter/material.dart';
import 'app_text_style.dart';
import 'app_theme.dart';

class AppThemeBlack extends AppTheme {
  AppTextStyle get textStyle => AppTextStyle.share;

  @override
  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        // backgroundColor: neutral800,
        // primaryColor: primary,
        // dialogBackgroundColor: grey90,
        fontFamily: 'SF-REGULAR',
        appBarTheme: _buildAppBarTheme,
        bottomAppBarTheme: _buildBottomAppBarTheme,
        dialogTheme: _buildDialogTheme,
      );
  AppBarTheme get _buildAppBarTheme => AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: backgroundColor),
        // textTheme: TextTheme(),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      );

  BottomAppBarTheme get _buildBottomAppBarTheme =>
      const BottomAppBarTheme(elevation: 0);

  DialogTheme get _buildDialogTheme => const DialogTheme(elevation: 0);

  @override
  Color get mainColor => const Color(0xFF3184F2);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get backgroundColor => const Color(0xFFF2F9FF);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get redColor => const Color(0xFFDD0000);

  @override
  Color get inActiveIndicator => const Color(0xFF4EA9F6);

  @override
  Color get color999999 => const Color(0xFF999999);

  @override
  Color get greyColor => const Color(0xFFD9D9D9);

  @override
  Color get color666666 => const Color(0xFF666666);

  @override
  Color get borderLightColor => const Color(0xFFD9D9D9);

  @override
  Color get inputColor => const Color(0xFFFCFCFC);

  @override
  Color get disableButtonColor => const Color(0xFFF1F1F1);

  @override
  Color get color003972 => const Color(0xFF003972);

  @override
  Color get colorFFFAEF => const Color(0xFFFFFAEF);

  @override
  Color get color1E60A2 => const Color(0xFF1E60A2);

  @override
  Color get color001D3A => const Color(0xFF001D3A);

  @override
  Color get color0080FF => const Color(0xFF0080FF);

  @override
  Color get colorE7EFF7 => const Color(0xFFE7EFF7);

  @override
  Color get color001D3B => const Color(0xFF001D3B);

  @override
  Color get colorF2FFFD => const Color(0xFFF2FFFD);

  @override
  Color get colorFF7A00 => const Color(0xFFFF7A00);

  @override
  Color get colorFF0505 => const Color(0xFFFF0505);

  @override
  Color get colorE5EBF1 => const Color(0xFFE5EBF1);

  @override
  Color get color98AEAB => const Color(0xFF98AEAB);
}
