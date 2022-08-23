// import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';

class BookingsScreen extends StatelessWidget {
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
                          left: 21,
                          top: 39,
                          right: 33,
                          bottom: 14,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: size.width,
                                margin: getMargin(
                                  left: 1,
                                  right: 1,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "My Bookings",
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
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  right: 249,
                                ),
                                child: Text(
                                  "All Bookings",
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
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  315.00,
                                ),
                                margin: getMargin(
                                  left: 15,
                                  top: 26,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray1007a,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  315.00,
                                ),
                                margin: getMargin(
                                  left: 15,
                                  top: 33,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray1007a,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  315.00,
                                ),
                                margin: getMargin(
                                  left: 15,
                                  top: 32,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray1007a,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  315.00,
                                ),
                                margin: getMargin(
                                  left: 15,
                                  top: 33,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray1007a,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  315.00,
                                ),
                                margin: getMargin(
                                  left: 15,
                                  top: 32,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray1007a,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  315.00,
                                ),
                                margin: getMargin(
                                  left: 15,
                                  top: 33,
                                  right: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.bluegray1007a,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 15,
                                  top: 75,
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
                                        svgPath:
                                            ImageConstant.imgVectorTealA200,
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
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 8,
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
