import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ridwan/base/colors.dart';
import 'package:ridwan/base/components/atoms/text.dart';

enum ButtonVariant {
  primary,
  primaryWhite,
  secondary,
  gradient,
  outlined,
}

enum ButtonIconPosition {
  left,
  right,
}

class TAButton extends StatelessWidget {
  const TAButton({
    Key? key,
    this.color,
    this.textColor,
    this.gradientColors,
    this.buttonIconPosition = ButtonIconPosition.left,
    this.variant = ButtonVariant.primary,
    this.isLoading = false,
    this.text,
    this.icon,
    this.margin,
    this.onPressed,
  })  : assert(
          icon != null || text != null,
          'both icon and text cannot be null simultanously',
        ),
        super(key: key);

  final Color? color;
  final Color? textColor;
  final List<Color>? gradientColors;
  final ButtonIconPosition? buttonIconPosition;
  final ButtonVariant variant;
  final bool isLoading;
  final String? text;
  final Widget? icon;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      if (text != null)
        TAText.subtitle1Bold(
          text: text!,
          color: _mapTextColorByVariant,
        ),
      if (icon != null) icon!
    ];
    if (buttonIconPosition == ButtonIconPosition.right) {
      children = children.reversed.toList();
    }
    return Container(
      height: icon != null ? null : 56,
      width: icon != null ? null : double.infinity,
      margin: margin,
      decoration: _mapDecorationByVariant,
      child: Material(
        color: Colors.transparent,
        shape: const StadiumBorder(),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(300),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: isLoading
                ? SpinKitRing(
                    color: _mapTextColorByVariant,
                    size: 20,
                    lineWidth: 4,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children,
                  ),
          ),
        ),
      ),
    );
  }

  Color get _mapTextColorByVariant {
    switch (variant) {
      case ButtonVariant.primary:
        return textColor ?? TBColors.tbWhite;
      case ButtonVariant.primaryWhite:
        return textColor ?? TBColors.tbBlack;
      case ButtonVariant.secondary:
        return textColor ?? TBColors.tbPrimary;
      case ButtonVariant.gradient:
        return textColor ?? TBColors.tbWhite;
      case ButtonVariant.outlined:
        return textColor ?? TBColors.tbPrimary;
    }
  }

  ShapeDecoration get _mapDecorationByVariant {
    switch (variant) {
      case ButtonVariant.primary:
        return primaryVariantShapeDecoration;
      case ButtonVariant.primaryWhite:
        return primaryWhiteVariantShapeDecoration;
      case ButtonVariant.secondary:
        return secondaryVariantShapeDecoration;
      case ButtonVariant.gradient:
        return gradientVariantShapeDecoration;
      case ButtonVariant.outlined:
        return outlinedVariantShapeDecoration;
    }
  }

  ShapeDecoration get primaryVariantShapeDecoration => ShapeDecoration(
        shape: const StadiumBorder(),
        color: color ?? TBColors.tbPrimary,
      );

  ShapeDecoration get primaryWhiteVariantShapeDecoration => ShapeDecoration(
        shape: const StadiumBorder(),
        color: color ?? TBColors.tbWhite,
      );

  ShapeDecoration get secondaryVariantShapeDecoration => ShapeDecoration(
        shape: const StadiumBorder(),
        color: color ?? TBColors.tbPrimaryLight10,
      );

  ShapeDecoration get gradientVariantShapeDecoration => ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: LinearGradient(
          colors: gradientColors ?? TBColors.tbBlueDarkGradient,
        ),
      );

  ShapeDecoration get outlinedVariantShapeDecoration => ShapeDecoration(
        shape:
            StadiumBorder(side: BorderSide(color: color ?? TBColors.tbPrimary)),
        color: Colors.transparent,
      );
}
