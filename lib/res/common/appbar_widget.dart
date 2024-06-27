
import 'package:flutter/material.dart';
import 'package:puja_live/res/color/app_color.dart';
import 'package:puja_live/res/common/button_widget.dart';

import '../fontstyle/const_text_style.dart';

// ignore: must_be_immutable
class ConstAppBar extends StatelessWidget {
  String? title;
  final VoidCallback onTap;

  ConstAppBar({super.key, required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    // var deviceHeight = MediaQuery.of(context).size.height;
    // var deviceWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      centerTitle: true,
      title: Text(title!,style: ConstFontStyle().appbarWhite),
      leading: AppBarBackButtonOff(onTap: onTap),
      shape: const RoundedRectangleBorder (
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
      ),
    );
  }
}

// ignore: must_be_immutable
class WithOutBtnAppBar extends StatelessWidget {
  String? title;

  WithOutBtnAppBar({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    // var deviceHeight = MediaQuery.of(context).size.height;
    // var deviceWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      centerTitle: true,
      title: Text(title!,style: ConstFontStyle().appbarWhite),
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder (
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
      ),
    );
  }
}
