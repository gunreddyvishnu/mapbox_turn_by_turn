// import 'package:application11/core/app_export.dart';
// import 'package:application11/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_text_form_field.dart';

class MapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: getMargin(
                        top: 10,
                        bottom: 8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            readOnly: true,
                            width: 334,
                            focusNode: FocusNode(),
                            hintText: "Search Maps",
                            margin: getMargin(
                              left: 28,
                              right: 28,
                            ),
                            variant: TextFormFieldVariant.OutlineTeal400,
                            fontStyle: TextFormFieldFontStyle.PoppinsRegular20,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 28,
                                top: 17,
                                right: 28,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 3,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgLocation,
                                      height: getVerticalSize(
                                        13.00,
                                      ),
                                      width: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                    ),
                                    child: Text(
                                      "Nearby",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray404,
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 33,
                                      top: 5,
                                      bottom: 2,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowup13X7,
                                      height: getVerticalSize(
                                        13.00,
                                      ),
                                      width: getHorizontalSize(
                                        7.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                    ),
                                    child: Text(
                                      "Recently Visited",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray404,
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 27,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgFlag,
                                      height: getVerticalSize(
                                        10.00,
                                      ),
                                      width: getHorizontalSize(
                                        7.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                    ),
                                    child: Text(
                                      "Favourites",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray404,
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 18,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgImage35,
                              height: getVerticalSize(
                                619.00,
                              ),
                              width: getHorizontalSize(
                                390.00,
                              ),
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: Padding(
                          //     padding: getPadding(
                          //       left: 28,
                          //       top: 15,
                          //       right: 28,
                          //     ),
                          //     child: Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceBetween,
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       mainAxisSize: MainAxisSize.max,
                          //       children: [
                          //         Padding(
                          //           padding: getPadding(
                          //             bottom: 2,
                          //           ),
                          //           child: CommonImageView(
                          //             svgPath:
                          //                 ImageConstant.imgVectorTealA200,
                          //             height: getVerticalSize(
                          //               18.00,
                          //             ),
                          //             width: getHorizontalSize(
                          //               22.00,
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: getPadding(
                          //             bottom: 2,
                          //           ),
                          //           child: CommonImageView(
                          //             svgPath: ImageConstant.imgCalendar,
                          //             height: getSize(
                          //               18.00,
                          //             ),
                          //             width: getSize(
                          //               18.00,
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: getPadding(
                          //             top: 2,
                          //           ),
                          //           child: CommonImageView(
                          //             svgPath: ImageConstant.imgCar,
                          //             height: getVerticalSize(
                          //               18.00,
                          //             ),
                          //             width: getHorizontalSize(
                          //               20.00,
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: getPadding(
                          //             top: 4,
                          //             bottom: 3,
                          //           ),
                          //           child: CommonImageView(
                          //             svgPath: ImageConstant.imgMenu,
                          //             height: getVerticalSize(
                          //               13.00,
                          //             ),
                          //             width: getHorizontalSize(
                          //               18.00,
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: Padding(
                          //     padding: getPadding(
                          //       left: 28,
                          //       top: 3,
                          //       right: 28,
                          //     ),
                          //     child: Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceBetween,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       mainAxisSize: MainAxisSize.max,
                          //       children: [
                          //         Text(
                          //           "Home",
                          //           overflow: TextOverflow.ellipsis,
                          //           textAlign: TextAlign.center,
                          //           style: TextStyle(
                          //             color: ColorConstant.gray900,
                          //             fontSize: getFontSize(
                          //               12,
                          //             ),
                          //             fontFamily: 'Poppins',
                          //             fontWeight: FontWeight.w400,
                          //           ),
                          //         ),
                          //         Text(
                          //           "My Booking",
                          //           overflow: TextOverflow.ellipsis,
                          //           textAlign: TextAlign.center,
                          //           style: TextStyle(
                          //             color: ColorConstant.gray900,
                          //             fontSize: getFontSize(
                          //               12,
                          //             ),
                          //             fontFamily: 'Poppins',
                          //             fontWeight: FontWeight.w400,
                          //           ),
                          //         ),
                          //         Text(
                          //           "My Vehicle",
                          //           overflow: TextOverflow.ellipsis,
                          //           textAlign: TextAlign.center,
                          //           style: TextStyle(
                          //             color: ColorConstant.gray900,
                          //             fontSize: getFontSize(
                          //               12,
                          //             ),
                          //             fontFamily: 'Poppins',
                          //             fontWeight: FontWeight.w400,
                          //           ),
                          //         ),
                          //         Text(
                          //           "Menu",
                          //           overflow: TextOverflow.ellipsis,
                          //           textAlign: TextAlign.center,
                          //           style: TextStyle(
                          //             color: ColorConstant.gray900,
                          //             fontSize: getFontSize(
                          //               12,
                          //             ),
                          //             fontFamily: 'Poppins',
                          //             fontWeight: FontWeight.w400,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
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
