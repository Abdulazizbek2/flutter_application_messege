import 'package:flutter/material.dart';

class Style {
  Style._();

  static const Color backgroundColor = Color(0xFFF6F6F9);
  static const Color black = Color(0xff000000);
  static const Color icon = Color(0xff959189);
  static const Color primary = Color(0xff1D3068);
  static const Color lightGrey = Color(0xffFFF7EB);
  static const Color lightGrey2 = Color(0xFFFBFBFC);
  static const Color greyTextField = Color(0xffF6F6F9);
  static const Color blackText2 = Color(0xff2C3035);
  static const Color greenText = Color(0xff2DA85B);
  static const Color inkText = Color(0xffA940FF);
  static const Color blueText = Color(0xff0D72FF);
  static const Color orangeText = Color(0xffFFA800);
  static const Color darkGreenText = Color(0xff00AEAD);
  static const Color lightRedText = Color(0xffE50029);
  static const Color darkInkText = Color(0xff6D01D8);
  static const Color lightBlueText = Color(0xff018AD8);
  static const Color lightGreyText = Color(0xffA9AABC);
  static const Color grey2Text = Color(0xff828796);
  static const Color borderColor = Color(0xffE2E6EE);
  static const Color secondary = Color(0xffA9AABC);
  static const Color firstColor = Color(0xffF45E3A);
  static const Color secondaryVariant = Color(0xffFFEDE1);
  static const Color coursorColor = Color(0xff0D72FF);
  static const Color error = Color(0xffED2E5C);
  static const Color redText = Color(0xffF75555);
  static const Color white = Color(0xffffffff);
  static const Color checkColor = Color(0xff3FCB65);
  static const Color blue = Color.fromRGBO(66, 133, 244, 1);
  static const Color darkBlue = Color(0xFF0D72FF);
  static const Color text = Color(0xff000000);
  static const Color textV1 = Color(0xff0E0E2C);
  static const Color bodyText = Color(0xff8FA0B4);
  static const Color subText = Color(0xffC2C2C2);
  static const Color lightBlack = Color(0xffFAFCFF);
  static const Color linkText = Color(0xFF0066CC);
  static const Color dark = Color(0xff1D1D1D);
  static const Color red = Color(0xffEB5757);
  static const Color grey = Color(0xffAFAFAF);
  static const Color grey1 = Color(0xff959189);
  static const Color lightTextBody = Color(0xffEDEDED);
  static const Color requested = Color(0xff5EC1C7);
  static const Color confirmed = Color(0xff3CB13A);
  static const Color input = Color(0xffE5ECFC);
  static const Color softColor = Color(0xffFFEDE1);
  static const Color dividerColor = Color(0xffD5DDF3);
  static const Color transparent = Colors.transparent;

  static const BoxShadow blueIconShadow = BoxShadow(
    color: Color(0x20696A6F),
    blurRadius: 12,
    spreadRadius: 2,
  );

  static TextStyle regular24({double size = 24, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14({double size = 14, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12({double size = 12, Color color = primary}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium20({double size = 20, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium14({double size = 14, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold14({double size = 14, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold20({double size = 20, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'SFProDisplay',
      fontWeight: FontWeight.w700,
    );
  }
}
