import 'package:flutter/material.dart';
import 'package:puja_live/res/color/app_color.dart';
import 'package:puja_live/res/utils/const_font_style.dart';

class ConstFontStyle {
  final TextStyle greyTextStyle = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 14,
      color: AppColors.greyTextDarkColor,
      overflow: TextOverflow.ellipsis);

  final TextStyle lableTextStyle = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontWeight: FontWeight.w200,
    fontSize: 15,
    color: AppColors.greyTextDarkColor,
  );
  final TextStyle lableTextStyleWithPrimary = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.primaryColor,
  );

  final TextStyle mainTitleBig = const TextStyle(
      fontFamily: ConstFont.popinsBold,
      fontWeight: FontWeight.w700,
      fontSize: 26,
      color: AppColors.black,
      overflow: TextOverflow.ellipsis);

  final TextStyle blackTextBig = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 26,
      color: AppColors.greyTextLightColor,
      overflow: TextOverflow.ellipsis);

  final TextStyle textMedium = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: AppColors.alertColor,
      overflow: TextOverflow.ellipsis);

  final TextStyle textTitle = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 15,
      color: AppColors.darkLighter,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis);

  final TextStyle textTitle2 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 16,
    color: AppColors.darkLighter,
    fontWeight: FontWeight.w400,
  );

  final TextStyle buttonTextStyle = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 15,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  final TextStyle smallTitle1 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 8,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );

  final TextStyle subTitle = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 16,
    color: AppColors.subTitleTextColor,
    fontWeight: FontWeight.w300,
  );
  final TextStyle mainTextStyleBlack = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: AppColors.black);

  final TextStyle mainTextStyle1 = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.titleTextColor);

  final TextStyle mainTextStyle2 = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.titleTextColor);

  final TextStyle mainTextStyle3 = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.titleTextColor);

  final TextStyle mainTextStyleGrey2 = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.tabColor);

  final TextStyle subText = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 8,
      fontWeight: FontWeight.w500,
      color: AppColors.black);

  final TextStyle subTextUnderline = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 8,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      color: AppColors.black,
      overflow: TextOverflow.ellipsis);

  final TextStyle subTextDark = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: AppColors.higjhLightTextColor);

  final TextStyle appbarWhite = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
      overflow: TextOverflow.ellipsis);

  final TextStyle smallTitleText = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      overflow: TextOverflow.ellipsis);

  final TextStyle textTitle3 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );
  final TextStyle textTitle3PrimaryColor = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 16,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  final TextStyle textTitle6 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );
  final TextStyle textTitleSettings = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  final TextStyle textTitleBlue = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 14,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis);

  final TextStyle textTitle1 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 10,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500,
  );

  final TextStyle textTitle4 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 10,
    color: Color(0xFF666666),
    fontWeight: FontWeight.w300,
  );

  final TextStyle textTitle7 = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      color: Color(0xff0E0105),
      fontWeight: FontWeight.w600,
      fontSize: 16,
      overflow: TextOverflow.ellipsis);

  final TextStyle subtextTitle5 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 10,
    color: AppColors.selectedRoundColor,
    fontWeight: FontWeight.w300,
  );

  final TextStyle subText1 = const TextStyle(
      fontFamily: ConstFont.popinsRegular,
      fontSize: 12,
      color: AppColors.subTextColor,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis);

  final TextStyle subText2 = const TextStyle(
    fontFamily: ConstFont.popinsRegular,
    fontSize: 10,
    color: AppColors.greenTextColor,
    fontWeight: FontWeight.w400,
  );

  final TextStyle smallText1 = const TextStyle(
      fontSize: 12,
      fontFamily: ConstFont.popinsRegular,
      color: AppColors.textColor,
      fontWeight: FontWeight.w300);

  final TextStyle textTitle5 = const TextStyle(
    fontFamily: ConstFont.popinsBold,
    fontSize: 16,
    color: AppColors.textColor,
    fontWeight: FontWeight.w600,
  );
}
