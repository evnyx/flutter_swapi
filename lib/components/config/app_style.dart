/// merupakan kumpulan config yang akan mempermudah dalam development theme/ style
/// yang kemungkinan dapat digunakan kembali
import 'package:flutter/material.dart';

class AppStyle {
  static const Color primaryColor = Color(0xFF3A4E85);
  static const Color authColor = Color(0xFF0E1316);
  static const Color alloColor = Color(0xFFFDBB3B);
  static const Color secondaryBlueColor = Color(0xFFF0F2FE);
  static const Color separatorColor = Color(0xFFF1F1F1);
  static const Color separatorColorPromo = Color(0xFFC4C4C4);
  static const Color blackTextColor = Color(0xFF333333);
  static const Color redBackgroundColor = Color(0xFFFF2F55);
  static const Color redRefundColor = Color(0xFFF05454);
  static const Color blueForgotPassword = Color(0xFF3492E1);
  static const Color grayTextColor = Color(0xFF8B8D95);
  static const Color grayDivider = Color(0xFFDADADA);
  static const Color blueRadio = Color(0xFF011936);
  static const Color grayTextColorCart = Color(0xFF8E8E93);
  static const Color grayTextColorPromo = Color(0xFF757575);
  static const Color grayTextColorNotif = Color(0xFF878787);
  static const Color separatorColorNotif = Color(0xFFDBDBDB);

  static const Color sideRectColor = Color(0xFFFCC7C7);
  static const Color hintTextColor = Color(0xFF707070);
  static const Color grayTextColorOpacity = Color(0x80707070);
  static const Color introBackgroundColor = Color(0xFFF7F7F7);
  static const Color socialMediaButtonColor = Color(0xFFFFC7C7);
  static const Color dividerColor = Color(0xFF707070);
  static const Color inputFieldColor = Color(0xFFF7F7F7);
  static const Color inputIconColor = Color(0xFFC7C7C7);
  static const Color textColorGrey = Color(0xFF767676);
  static const Color whiteDefaultBackground = Color(0xFFE5E5E5);

  static ButtonStyle buttonStyleConfirm() => TextButton.styleFrom(
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      textStyle: TextStyle(fontSize: 16));

  static ButtonStyle infoButtonStyle = TextButton.styleFrom(
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      textStyle: TextStyle(fontSize: 16));

  static TextStyle textBody({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle10({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 10, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle10Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 10, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle12({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 12, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle12SemiBold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 12, fontWeight: FontWeight.w600, color: textColor);
  }

  static TextStyle textStyle12Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 12, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle14({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle14Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle16({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle16SemiBold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: textColor);
  }

  static TextStyle textStyle16Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle18({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 18, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle18Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle20({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle20Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle24({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 24, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle24Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle28({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 28, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle28Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 28, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle32({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 32, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle32Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 32, fontWeight: FontWeight.bold, color: textColor);
  }

  static TextStyle textStyle40({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 40, fontWeight: FontWeight.normal, color: textColor);
  }

  static TextStyle textStyle40Bold({Color textColor = Colors.black}) {
    return TextStyle(
        fontSize: 40, fontWeight: FontWeight.bold, color: textColor);
  }
}
