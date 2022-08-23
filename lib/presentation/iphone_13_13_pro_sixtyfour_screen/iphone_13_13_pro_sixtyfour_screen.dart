
import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/core/utils/math_utils.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_button.dart';

class Iphone1313ProSixtyfourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        841.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        bottom: 3,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(
                            0.5666669987918294,
                            0.9999999751431181,
                          ),
                          end: Alignment(
                            0.5410258193083113,
                            -1.864183762911864e-8,
                          ),
                          colors: [
                            ColorConstant.bluegray901,
                            ColorConstant.bluegray902,
                            ColorConstant.gray903,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(
                            0.28974357155984143,
                            -0.03554501922275938,
                          ),
                          end: Alignment(
                            -0.05897436461791883,
                            1.452606699502169,
                          ),
                          colors: [
                            ColorConstant.bluegray9007f,
                            ColorConstant.teal9007f,
                            ColorConstant.bluegray6007f,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 35,
                                top: 75,
                                right: 35,
                              ),
                              child: Text(
                                "My Profile",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                152.00,
                              ),
                              width: getHorizontalSize(
                                144.00,
                              ),
                              margin: getMargin(
                                left: 35,
                                top: 22,
                                right: 35,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: getSize(
                                        144.00,
                                      ),
                                      width: getSize(
                                        144.00,
                                      ),
                                      margin: getMargin(
                                        top: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.tealA400,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            72.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        right: 10,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant
                                            .imgVectarytexture139X128,
                                        height: getVerticalSize(
                                          139.00,
                                        ),
                                        width: getHorizontalSize(
                                          128.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                19.00,
                              ),
                              width: getHorizontalSize(
                                112.00,
                              ),
                              margin: getMargin(
                                left: 35,
                                top: 18,
                                right: 35,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "Mohan Raaj        4.5",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 12,
                                        right: 12,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowup,
                                        height: getSize(
                                          16.00,
                                        ),
                                        width: getSize(
                                          16.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 39,
                              top: 12,
                              right: 39,
                            ),
                            child: Text(
                              "Status",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 35,
                                top: 7,
                                right: 35,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray2007a,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    7.00,
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomButton(
                                    width: 155,
                                    text: "Active",
                                    margin: getMargin(
                                      left: 6,
                                      top: 4,
                                      bottom: 4,
                                    ),
                                    variant: ButtonVariant.OutlineBlack9003f,
                                    shape: ButtonShape.RoundedBorder5,
                                    padding: ButtonPadding.PaddingAll7,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanMedium15,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 40,
                                      top: 11,
                                      right: 66,
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Inactive",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          15,
                                        ),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 1.13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 39,
                              top: 25,
                              right: 39,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getVerticalSize(
                                      18.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 9,
                                  ),
                                  child: Text(
                                    "Notifications",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 39,
                              top: 26,
                              right: 39,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgVideocamera,
                                    height: getVerticalSize(
                                      15.00,
                                    ),
                                    width: getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 7,
                                  ),
                                  child: Text(
                                    "Chat Center",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 39,
                              top: 27,
                              right: 39,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCreditcard,
                                    height: getVerticalSize(
                                      14.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                  ),
                                  child: Text(
                                    "Payments",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 39,
                              top: 26,
                              right: 39,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgHeadphone,
                                    height: getSize(
                                      17.00,
                                    ),
                                    width: getSize(
                                      17.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 7,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Support Center",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              20.00,
                            ),
                            width: getHorizontalSize(
                              69.00,
                            ),
                            margin: getMargin(
                              left: 39,
                              top: 26,
                              right: 39,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 1,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "FAQs",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector,
                                      height: getVerticalSize(
                                        20.00,
                                      ),
                                      width: getHorizontalSize(
                                        17.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 40,
                              top: 23,
                              right: 40,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      13.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "Logout",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 40,
                              top: 29,
                              right: 40,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(
                                      15.00,
                                    ),
                                    width: getSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 7,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "Settings",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getVerticalSize(
                                37.00,
                              ),
                              width: getHorizontalSize(
                                320.00,
                              ),
                              margin: getMargin(
                                left: 27,
                                top: 29,
                                right: 27,
                                bottom: 75,
                              ),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 67,
                                        top: 8,
                                        right: 67,
                                        bottom: 10,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(
                                                13.00,
                                              ),
                                              width: getSize(
                                                13.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 9,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "Switch to EV USER",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.tealA400,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        37.00,
                                      ),
                                      width: getHorizontalSize(
                                        320.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            7.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color: ColorConstant.tealA400,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
