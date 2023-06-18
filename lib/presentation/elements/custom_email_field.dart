import 'package:flutter/material.dart';

class CustomEmailField extends StatefulWidget {
  final String hinText;

  final String? labelText;

  final Widget? prefixIcon;

  final bool? isPasswordField;
  bool? isObscure;
  BorderSide? borderSide;
  BorderRadius borderRadius;
  bool? isFilled;
  final Color? fillColor;

  CustomEmailField({
    Key? key,
    required this.hinText,
    this.labelText,
    this.prefixIcon,
    this.isPasswordField = false,
    this.isObscure = false,
    this.borderSide = const BorderSide(
      color: Color(0xffDFDFDF),
      width: 0,
    ),
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
    this.isFilled = false,
    this.fillColor,
  }) : super(key: key);

  @override
  State<CustomEmailField> createState() => _CustomEmailFieldState();
}

class _CustomEmailFieldState extends State<CustomEmailField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isObscure ?? false,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(
                  color: Color(0xffDFDFDF),
                  width: 0,
                ),
            borderRadius:
                widget.borderRadius ?? BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(
                  color: Color(0xffDFDFDF),
                  width: 0,
                ),
            borderRadius:
                widget.borderRadius ?? BorderRadius.all(Radius.circular(10.0)),
          ),
          filled: widget.isFilled,
          prefixIcon: widget.prefixIcon,
          fillColor: widget.fillColor,
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xff868787),
            fontSize: 11,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: widget.isPasswordField!
              ? GestureDetector(
                  onTap: () {
                    widget.isObscure = !widget.isObscure!;
                    setState(() {});
                  },
                  child: widget.isObscure ?? false
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility_outlined),
                )
              : null),
    );
  }
}
