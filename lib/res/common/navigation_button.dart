import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_live/res/common/common_text.dart';
import 'package:puja_live/res/fontstyle/const_text_style.dart';

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      radius: 15,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.006.sh),
        padding: EdgeInsets.symmetric(horizontal: 0.06.sw, vertical: 0.02.sh),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xffcccccc)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              style: ConstFontStyle().textTitleSettings,
              text: title,
              fontWeight: FontWeight.w500,
              fontSize: 0.013.sh,
              color: const Color(0xff0E0105),
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffE6E6E6)),
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 0.014.sh,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
