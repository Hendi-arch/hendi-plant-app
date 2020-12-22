import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double radius;
  final Function onPressed;

  const CustomButton({
    Key key,
    this.child,
    this.onPressed,
    this.color = const Color(0xff2DDA93),
    this.radius = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: child,
      onPressed: onPressed,
      elevation: 0.0,
      color: color,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration inputDecoration;
  final int maxLines;
  final TextStyle textStyle;
  final TextInputType textInputType;
  final Color cursorColor;
  final ValueChanged<String> onChanged;
  final bool readOnly;
  final bool obscureText;
  final double cursorHeight;

  const CustomTextFormField({
    Key key,
    this.controller,
    this.inputDecoration,
    this.maxLines = 1,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.cursorColor = const Color(0xff2DDA93),
    this.onChanged,
    this.readOnly = false,
    this.obscureText = false,
    this.cursorHeight = 15.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        cursorHeight: cursorHeight,
        textAlign: TextAlign.left,
        decoration: inputDecoration,
        style: textStyle,
        keyboardType: textInputType,
        maxLength: null,
        autofillHints: ["Type something, eg: Hendi...", "Others..."],
        cursorColor: cursorColor,
        onChanged: onChanged,
        readOnly: readOnly,
        obscureText: obscureText,
      ),
    );
  }
}
