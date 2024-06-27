// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:puja_live/res/color/app_color.dart';
import 'package:puja_live/res/fontstyle/const_text_style.dart';

class CommonTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obSecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefix;
  List<TextInputFormatter>? inputFormatters = [];

  CommonTextfield({super.key, 
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    required this.obSecure,
    this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    this.hintText,
    this.suffixIcon,
    this.prefix,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.onSaved,
    this.labelText,
    this.inputFormatters,
    this.onFieldSubmitted,
  });

  @override
  State<CommonTextfield> createState() => _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: widget.onFieldSubmitted,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingCompleted,
      obscureText: widget.obSecure,
      minLines: widget.isMulti ? 4 : 1,
      maxLines: widget.isMulti ? null : 1,
      onTap: widget.onTap,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.transparent)
        ),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.textFieldColor,
        // labelText: widget.labelText,
        labelStyle: ConstFontStyle().lableTextStyle,
        errorMaxLines: 2,
        hintText: widget.hintText,
        hintStyle: ConstFontStyle().lableTextStyle,
        errorText: widget.errorText,
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffixIcon,
      ),
      validator: widget.validator,
    );
  }
}


class PhoneNoField extends StatelessWidget {
  final TextEditingController? controller;
  const PhoneNoField({
    super.key, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    Country selected = countries.firstWhere((country) => country.code == 'CA');
    return Padding(
      padding: const EdgeInsets.symmetric(/*vertical: 0.01.sh*/),
      child: IntlPhoneField(
        validator: (p0) {
          if (p0!.number.isEmpty) {
            return "phone is required";
          } else {
            return null;
          }
        },
        initialCountryCode: selected.code,
        onChanged: (phone) {},
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          hintText: "000 000 000",
          hintStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
          fillColor: AppColors.textFieldColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
        ),
      ),
    );
  }
}
