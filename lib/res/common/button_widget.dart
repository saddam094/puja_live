
import 'package:flutter/material.dart';
import 'package:puja_live/res/color/app_color.dart';

import '../fontstyle/const_text_style.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool? loading;

  const RoundButton(
      {super.key, required this.title, required this.onTap, this.loading});

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      splashColor: Colors.white,
      child: Container(
        height: deviceHeight * 0.0625,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: loading == true
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  title,
                  style: ConstFontStyle().buttonTextStyle,
                ),
        ),
      ),
    );
  }
}


class AppBarBackButton extends StatelessWidget {
  final VoidCallback onTap;

  const AppBarBackButton(
      {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 6,right: 6,left: 8),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        child: Container(
          height: deviceHeight * 0.005,
          width: deviceWidth * 0.6,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.buttonBorderColor)
          ),
          child: const Center(
            child: Icon(Icons.arrow_back_ios_new,color: AppColors.black,size: 20,),
          ),
        ),
      ),
    );
  }
}


class AppBarBackButtonOff extends StatelessWidget {
  final VoidCallback onTap;

  const AppBarBackButtonOff(
      {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: deviceHeight * 0.065,
          width: deviceWidth * 0.11,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.white)
          ),
          child: const Center(
            child: Icon(Icons.arrow_back_ios_new,color: AppColors.white,size: 23,),
          ),
        ),
      ),
    );
  }
}


class SeeAllButton extends StatelessWidget {
  final VoidCallback onTap;

  const SeeAllButton(
      {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 6,right: 6,left: 8),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        child: Container(
          height: deviceHeight * 0.035,
          width: deviceWidth * 0.25,
          decoration: BoxDecoration(
              // color: AppColors.white,
              borderRadius: BorderRadius.circular(deviceWidth * .05),
              border: Border.all(
                color: Colors.black,
                width: deviceWidth * .003
              )
          ),
          child: Center(
            child: Text('See All', style: TextStyle(fontSize: deviceWidth * .05, color: AppColors.textColor),)
          ),
        ),
      ),
    );
  }
}


class AddToCartButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddToCartButton(
      {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 1,bottom: 1,right: 1,left: 1),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        child: Container(
          height: deviceHeight * 0.03,
          width: deviceWidth * 0.2,
          decoration: BoxDecoration(
            // color: AppColors.white,
              borderRadius: BorderRadius.circular(deviceWidth * .05),
              border: Border.all(
                  color: Colors.black,
                  width: deviceWidth * .003
              )
          ),
          child: Center(
              child: Text('Add To Cart', style: TextStyle(fontSize: deviceWidth * .02, color: AppColors.textColor),)
          ),
        ),
      ),
    );
  }
}