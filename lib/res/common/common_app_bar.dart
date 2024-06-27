// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_live/res/color/app_color.dart';
import 'package:puja_live/res/common/common_text.dart';
import 'package:puja_live/res/fontstyle/const_text_style.dart';


PreferredSize CommonAppBar({
  required BuildContext context,
  required String title,
  bool backButton = false,
  bool isTitle = false,
  VoidCallback? onBackTap,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: 
   !isTitle? AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0.0,
      leadingWidth: 0.18.sw,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(),
        child: !backButton
            ? Container()
            : InkWell(
                onTap: onBackTap ?? () => Navigator.pop(context),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 0.04.sw,
                    top: 0.008.sh,
                    bottom: 0.008.sh,
                    right: 0.04.sw,
                  ),
                  padding: EdgeInsets.only(
                    left: 0.025.sw,
                  ),
                  decoration: ShapeDecoration(
                    // color: const Color(0xffFEFEFE).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
      ),
      title: CommonText(
        style: ConstFontStyle().appbarWhite,
        text: title,
        color: AppColors.whiteColor,
        fontSize: 0.018.sh,
        fontWeight: FontWeight.w800,
      ),
      centerTitle: true,
    ):
  
    AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0.0,
      leadingWidth: 0.18.sw,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(),
        child: !backButton
            ? Container()
            : InkWell(
                onTap: onBackTap ?? () => Navigator.pop(context),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 0.04.sw,
                    top: 0.008.sh,
                    bottom: 0.008.sh,
                    right: 0.04.sw,
                  ),
                  padding: EdgeInsets.only(
                    left: 0.025.sw,
                  ),
                  decoration: ShapeDecoration(
                    // color: const Color(0xffFEFEFE).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
      ),
      
    ),
  
  
  );
}


PreferredSize CommonAppBarBtn({
  required BuildContext context,
  required String title,
  bool backButton = false,
  bool isTitle = false,
  VoidCallback? onBackTap,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child:
    !isTitle? AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0.0,
      leadingWidth: 0.18.sw,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(),
        child: InkWell(
          onTap: onBackTap,
          child: Container(
            margin: EdgeInsets.only(
              left: 0.04.sw,
              top: 0.008.sh,
              bottom: 0.008.sh,
              right: 0.04.sw,
            ),
            padding: EdgeInsets.only(
              left: 0.025.sw,
            ),
            decoration: ShapeDecoration(
              // color: const Color(0xffFEFEFE).withOpacity(0.1),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
      title: CommonText(
        style: ConstFontStyle().appbarWhite,
        text: title,
        color: AppColors.whiteColor,
        fontSize: 0.018.sh,
        fontWeight: FontWeight.w800,
      ),
      centerTitle: true,
    ):

    AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0.0,
      leadingWidth: 0.18.sw,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(),
        child: !backButton
            ? Container()
            : InkWell(
          onTap: onBackTap,
          child: Container(
            margin: EdgeInsets.only(
              left: 0.04.sw,
              top: 0.008.sh,
              bottom: 0.008.sh,
              right: 0.04.sw,
            ),
            padding: EdgeInsets.only(
              left: 0.025.sw,
            ),
            decoration: ShapeDecoration(
              // color: const Color(0xffFEFEFE).withOpacity(0.1),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ),

    ),


  );
}


PreferredSize CommonHomeAppBar({
  required BuildContext context,
  required String title,
  bool backButton = false,
  bool isTitle = false,
  VoidCallback? onBackTap,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child:
    !isTitle? AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0.0,
      leadingWidth: 0.18.sw,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(),
        child: !backButton
            ? Container()
            : InkWell(
          onTap: onBackTap ?? () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.only(
              left: 0.04.sw,
              top: 0.008.sh,
              bottom: 0.008.sh,
              right: 0.04.sw,
            ),
            padding: EdgeInsets.only(
              left: 0.025.sw,
            ),
            decoration: ShapeDecoration(
              // color: const Color(0xffFEFEFE).withOpacity(0.1),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
      title: CommonText(
        style: ConstFontStyle().appbarWhite,
        text: title,
        color: AppColors.whiteColor,
        fontSize: 0.018.sh,
        fontWeight: FontWeight.w800,
      ),
      centerTitle: true,
    ):

    AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0.0,
      leadingWidth: 0.18.sw,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(),
        child: !backButton
            ? Container()
            : InkWell(
          onTap: onBackTap ?? () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.only(
              left: 0.04.sw,
              top: 0.008.sh,
              bottom: 0.008.sh,
              right: 0.04.sw,
            ),
            padding: EdgeInsets.only(
              left: 0.025.sw,
            ),
            decoration: ShapeDecoration(
              // color: const Color(0xffFEFEFE).withOpacity(0.1),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ),

    ),


  );
}