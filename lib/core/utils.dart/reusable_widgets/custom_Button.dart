import 'package:flutter/material.dart';

import '../../styles.dart/stylekit.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.isPrimary = true,
    this.isDisabled = false,
    this.textStyle,
    this.isLoading = false,
    this.color,
  });
  final String text;
  final bool isPrimary;
  final bool isDisabled;
  final void Function()? onTap;
  final TextStyle? textStyle;
  final bool isLoading;
  final Color? color;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.064, //66px for 1080

        child: Container(
          decoration: BoxDecoration(
            // gradient: !widget.isDisabled && widget.isPrimary
            //     ? const LinearGradient(
            //         colors: [
            //           Color(0xFF3A36DB),
            //           Color(0xFF7C4EF1),
            //         ],
            //       )
            //     : null,
            borderRadius: BorderRadius.circular(4.0),
            // border: !widget.isPrimary
            //     ? Border.all(color: $styles.colors.lavenderBlue)
            //     : null,
            // color: widget.isDisabled ? Colors.grey : null,
          ),
          child: InkWell(
            onHover: (val) {
              setState(() {
                isHover = val;
              });
            },
            onTap: !widget.isDisabled ? widget.onTap : () {},
            child: Center(
              child: widget.isLoading
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: CircularProgressIndicator(
                        // color: $styles.colors.white,
                        backgroundColor: $styles.colors.tertiary900,
                      ),
                    )
                  : Text(
                      widget.text,
                      // style: widget.textStyle ?? $styles.text.buttonBold,
                      // style: widget.isPrimary
                      // ? $styles.text.lato17_500white
                      // : $styles.text.lato17_500violet,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
