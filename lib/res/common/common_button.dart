import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_live/res/color/app_color.dart';


class CommonButton extends StatelessWidget {
  final String title;
  final Size? size;
  final Function()? onTap;
  final bool isLoading;
  final bool apiSucceed;
  final double width;
  final double? height;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool isEnabled;
  const CommonButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height,
    required this.onTap,
    this.size,
    this.isLoading = false,
    this.apiSucceed = false,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return isEnabled
        ? isLoading
            ? Container(
                height: height ?? 0.08.sh,
                width: width,
                padding: padding,
                margin: margin,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.primaryColor),
                child: const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.whiteColor,
                )),
              )
            : InkWell(
                onTap: onTap,
                child: Container(
                  height: height ?? 0.08.sh,
                  width: width,
                  padding: padding,
                  margin: margin,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.primaryColor),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
        : Container(
            height: height ?? 0.08.sh,
            width: width,
            padding: padding,
            margin: margin,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side:
                    const BorderSide(width: 1, color: AppColors.darkGreyColor),
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
  }
}
