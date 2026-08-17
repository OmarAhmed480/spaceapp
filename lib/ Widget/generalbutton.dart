import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.child,
    this.radiusCircular,
    this.sideColor,
    this.borderWidth,
    this.buttonWidth,
    this.height,
  });

  final Widget? child;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? radiusCircular;
  final Color? sideColor;

  // عرض الزر
  final double? buttonWidth;

  // سمك الـ Border
  final double? borderWidth;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      height: height ?? 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              (radiusCircular != null && radiusCircular!.isFinite)
                  ? radiusCircular!
                  : 16,
            ),
            side: BorderSide(
              color: sideColor ?? Colors.transparent,
              width: (borderWidth != null && borderWidth!.isFinite)
                  ? borderWidth!
                  : 1,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
