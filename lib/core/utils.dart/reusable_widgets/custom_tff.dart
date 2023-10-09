import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTFF extends StatelessWidget {
  final TextStyle? hintstyle;
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? initialValue;
  final String? borderType;
  final double borderSize;
  final Color borderColor;
  final double? boxHeight;
  final Function(String)? onChanged;
  final bool isObscure;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isHidden;
  final bool? readOnly;
  final String? Function(String?)? validator;
  const CustomTFF(
      {Key? key,
      this.hintstyle,
      this.controller,
      this.label,
      this.initialValue,
      this.hint,
      this.borderType,
      this.borderSize = 1,
      this.borderColor = const Color(0XFFC2C2C2),
      this.boxHeight,
      this.onChanged,
      this.isObscure = false,
      this.maxLines,
      this.minLines,
      this.suffixIcon,
      this.prefixIcon,
      this.isHidden,
      this.readOnly,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: boxHeight ?? 41.0,
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        readOnly: readOnly ?? false,
        style: GoogleFonts.lato(
            color: const Color(0xFF777A7C),
            fontSize: 16,
            fontWeight: FontWeight.w500),
        onChanged: onChanged,
        obscureText: isObscure,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          isDense: true,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          hintText: hint,
          // hintStyle: hintstyle ?? $styles.text.lato12_400Grey6,
          labelText: label,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(width: borderSize, color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(width: borderSize, color: borderColor),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
          alignLabelWithHint: true,
        ),
        maxLines: maxLines,
        textAlignVertical: TextAlignVertical.center,
        minLines: minLines,
      ),
    );
  }
}
