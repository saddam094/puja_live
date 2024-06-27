// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_live/res/color/app_color.dart';

// ignore: must_be_immutable
class CommonTextPasswordField extends StatelessWidget {
  CommonTextPasswordField(
      {super.key,
      required this.hintText,
      this.icon,
      this.controller,
      this.hintFontSize,
      this.validation,
      this.noOfInput,
      this.digitOnly,
      this.maxLine,
      this.keyboardTyep,
      this.isEmail,
      this.obscureText,
      this.minLine});

  final String hintText;
  final Widget? icon;
  TextEditingController? controller;
  double? hintFontSize;
  String? Function(String?)? validation;
  int? minLine;
  int? maxLine;
  int? noOfInput;
  TextInputType? keyboardTyep;
  bool? isEmail;
  bool? digitOnly;
  bool? obscureText =false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.01.sh),
      child: Stack(
        children: [
          TextFormField(
            controller: controller,
            validator: validation,
            keyboardType: keyboardTyep,
            minLines: minLine ?? 1,
            maxLines: maxLine ?? 1,
            obscureText: obscureText==true?true:false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(noOfInput),
              // digitOnly == true
              //     ? FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
              //     : isEmail == true
              //         ? FilteringTextInputFormatter.deny("*")
              //         : FilteringTextInputFormatter.deny("*")
            ],
            decoration: InputDecoration(
              suffixIcon: icon,
              prefix: const SizedBox(width: 10),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: hintFontSize,
                  color: const Color(0xff656872).withOpacity(0.5),
                  fontWeight: FontWeight.w500),
              fillColor: AppColors.textFieldColor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide:
                    BorderSide(color: const Color(0xff656872).withOpacity(0.01)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide:
                    BorderSide(color: const Color(0xff656872).withOpacity(0.01)),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide:
                    BorderSide(color: const Color(0xff656872).withOpacity(0.01)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide:
                    BorderSide(color: const Color(0xff656872).withOpacity(0.01)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
