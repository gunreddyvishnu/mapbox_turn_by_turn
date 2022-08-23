// import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
// import '../core/constants/constants.dart';
class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(
                    0.5,
                    -3.0616171314629196e-17,
                  ),
                  end: Alignment(
                    0.5,
                    0.9999999999999999,
                  ),
                  colors: [
                    ColorConstant.bluegray900,
                    ColorConstant.teal700,
                  ],
                ),
              ),
              child: Container(
                height: size.height,
                width: size.width,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 20,
                          top: 39,
                          right: 33,
                          bottom: 14,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width,
                              margin: getMargin(
                                left: 2,
                                right: 1,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Notifications",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        32,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 16,
                                      bottom: 17,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgMenu,
                                      height: getVerticalSize(
                                        15.00,
                                      ),
                                      width: getHorizontalSize(
                                        23.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  right: 10,
                                ),
                                child: Text(
                                  "All Notifications",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray300,
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: getVerticalSize(
                                  201.00,
                                ),
                                width: getHorizontalSize(
                                  207.00,
                                ),
                                margin: getMargin(
                                  left: 54,
                                  top: 165,
                                  right: 54,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 18,
                                          top: 10,
                                          right: 18,
                                          bottom: 9,
                                        ),
                                        child: CommonImageView(
                                          imagePath: ImageConstant.imgRectangle,
                                          height: getVerticalSize(
                                            65.00,
                                          ),
                                          width: getHorizontalSize(
                                            136.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          164.00,
                                        ),
                                        width: getHorizontalSize(
                                          188.00,
                                        ),
                                        margin: getMargin(
                                          left: 9,
                                          top: 14,
                                          right: 10,
                                          bottom: 21,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle164X188,
                                                height: getVerticalSize(
                                                  164.00,
                                                ),
                                                width: getHorizontalSize(
                                                  188.00,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: getVerticalSize(
                                                  16.00,
                                                ),
                                                width: getHorizontalSize(
                                                  24.00,
                                                ),
                                                margin: getMargin(
                                                  left: 64,
                                                  top: 8,
                                                  right: 64,
                                                  bottom: 10,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 10,
                                                        ),
                                                        child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle16X22,
                                                          height:
                                                              getVerticalSize(
                                                            16.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            22.00,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                          right: 10,
                                                          bottom: 10,
                                                        ),
                                                        child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle12X18,
                                                          height:
                                                              getVerticalSize(
                                                            12.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            18.00,
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
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        height: getVerticalSize(
                                          83.00,
                                        ),
                                        width: getHorizontalSize(
                                          161.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          top: 10,
                                          right: 10,
                                          bottom: 3,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle83X161,
                                                height: getVerticalSize(
                                                  83.00,
                                                ),
                                                width: getHorizontalSize(
                                                  161.00,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 23,
                                                  top: 10,
                                                  right: 23,
                                                  bottom: 8,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                        bottom: 15,
                                                      ),
                                                      child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle22X48,
                                                        height: getVerticalSize(
                                                          22.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          48.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        44.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        48.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 7,
                                                      ),
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 5,
                                                                right: 6,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle44X35,
                                                                height:
                                                                    getVerticalSize(
                                                                  44.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  35.00,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 10,
                                                                bottom: 1,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle1,
                                                                height:
                                                                    getVerticalSize(
                                                                  22.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  48.00,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
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
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 51,
                                          top: 10,
                                          right: 51,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle63X65,
                                          height: getVerticalSize(
                                            63.00,
                                          ),
                                          width: getHorizontalSize(
                                            65.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 38,
                                          bottom: 38,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle50X36,
                                          height: getVerticalSize(
                                            50.00,
                                          ),
                                          width: getHorizontalSize(
                                            36.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 50,
                                          right: 24,
                                          bottom: 50,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle36X27,
                                          height: getVerticalSize(
                                            36.00,
                                          ),
                                          width: getHorizontalSize(
                                            27.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 27,
                                          right: 27,
                                          bottom: 10,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle2,
                                          height: getVerticalSize(
                                            50.00,
                                          ),
                                          width: getHorizontalSize(
                                            36.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 46,
                                          top: 21,
                                          right: 46,
                                          bottom: 21,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle3,
                                          height: getVerticalSize(
                                            36.00,
                                          ),
                                          width: getHorizontalSize(
                                            27.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 29,
                                          top: 27,
                                          right: 29,
                                          bottom: 27,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle46X78,
                                          height: getVerticalSize(
                                            46.00,
                                          ),
                                          width: getHorizontalSize(
                                            78.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 57,
                                          top: 15,
                                          right: 57,
                                          bottom: 15,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle4,
                                          height: getVerticalSize(
                                            12.00,
                                          ),
                                          width: getHorizontalSize(
                                            18.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 88,
                                          top: 10,
                                          right: 88,
                                          bottom: 5,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle26X19,
                                          height: getVerticalSize(
                                            26.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 50,
                                          top: 10,
                                          right: 50,
                                          bottom: 2,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle42X38,
                                          height: getVerticalSize(
                                            42.00,
                                          ),
                                          width: getHorizontalSize(
                                            38.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        height: getVerticalSize(
                                          59.00,
                                        ),
                                        width: getHorizontalSize(
                                          122.00,
                                        ),
                                        margin: getMargin(
                                          left: 6,
                                          top: 38,
                                          right: 10,
                                          bottom: 38,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle59X122,
                                                height: getVerticalSize(
                                                  59.00,
                                                ),
                                                width: getHorizontalSize(
                                                  122.00,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 10,
                                                  top: 15,
                                                  right: 1,
                                                  bottom: 15,
                                                ),
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle21X61,
                                                  height: getVerticalSize(
                                                    21.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    61.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 25,
                                          right: 10,
                                          bottom: 25,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle63X148,
                                          height: getVerticalSize(
                                            63.00,
                                          ),
                                          width: getHorizontalSize(
                                            148.00,
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
                                left: 16,
                                top: 39,
                                right: 16,
                              ),
                              child: Text(
                                "No Notifications recieved yet!",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    16.5,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 252,
                                right: 11,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 2,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVectorTealA200,
                                      height: getVerticalSize(
                                        18.00,
                                      ),
                                      width: getHorizontalSize(
                                        22.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      bottom: 2,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                      height: getSize(
                                        18.00,
                                      ),
                                      width: getSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCar,
                                      height: getVerticalSize(
                                        18.00,
                                      ),
                                      width: getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 3,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgMenu,
                                      height: getVerticalSize(
                                        13.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 9,
                                top: 3,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Home",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "My Booking",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "My Vehicle",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Menu",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}
