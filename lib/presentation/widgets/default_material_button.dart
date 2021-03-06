import 'package:flutter/material.dart';
import 'package:task1/presentation/styles/colors.dart';
import 'package:task1/presentation/widgets/default_text.dart';

class DefaultMaterialButton extends StatelessWidget {
  final bool isUpperCase;
  final double width;
  final double? height;
  final double radius;
  final Color background;
  final Color textColor;
  final Color? splashColor;
  final VoidCallback onPressed; // voidCallback = void Function()
  final String text;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final double? elevation;
  final double? textScaleFactor;
  final FontWeight? fontWeight;

  const DefaultMaterialButton(
      {Key? key,
      this.textColor = defaultAppWhiteColor,
      required this.onPressed,
      required this.text,
      this.width = double.infinity,
      this.isUpperCase = false,
      this.background = defaultAppColor,
      this.radius = 8,
      this.splashColor,
      this.padding = const EdgeInsets.symmetric(vertical: 6),
      this.height,
      this.fontSize,
      this.textScaleFactor,
      this.fontWeight,
      this.elevation = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        padding: padding,
        elevation: elevation,
        splashColor: splashColor,
        color: background,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        onPressed: onPressed,
        child: DefaultText(
          text: isUpperCase ? text.toUpperCase() : text,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textScaleFactor: textScaleFactor,
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
