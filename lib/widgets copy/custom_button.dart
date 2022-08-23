// import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.tealA400;
      case ButtonVariant.OutlineTealA400:
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return ColorConstant.tealA400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineTealA400:
        return Border.all(
          color: ColorConstant.tealA400,
          width: getHorizontalSize(
            4.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack9003f:
        return null;
      default:
        return Border.all(
          color: ColorConstant.tealA400,
          width: getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            31.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.OutlineTealA4001_2:
      case ButtonVariant.OutlineTealA400:
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsSemiBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.bluegray903,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray901,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder31,
  RoundedBorder5,
  RoundedBorder20,
}
enum ButtonPadding {
  PaddingAll16,
  PaddingAll7,
}
enum ButtonVariant {
  OutlineTealA4001_2,
  OutlineTealA400,
  OutlineBlack9003f,
  OutlineWhiteA700,
}
enum ButtonFontStyle {
  PoppinsSemiBold20Gray901,
  PoppinsSemiBold20,
  RobotoRomanMedium15,
}
