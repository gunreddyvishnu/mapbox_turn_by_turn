// import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
class ProfileScreen extends StatelessWidget {
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 112,
                        top: 60,
                        right: 112,
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
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        160.00,
                      ),
                      width: getHorizontalSize(
                        155.00,
                      ),
                      margin: getMargin(
                        left: 112,
                        top: 24,
                        right: 112,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: getSize(
                                144.00,
                              ),
                              width: getSize(
                                144.00,
                              ),
                              margin: getMargin(
                                left: 10,
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
                                imagePath:
                                    ImageConstant.imgVectarytexture139X128,
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
                    Container(
                      height: getVerticalSize(
                        19.00,
                      ),
                      width: getHorizontalSize(
                        112.00,
                      ),
                      margin: getMargin(
                        left: 112,
                        top: 24,
                        right: 112,
                        bottom: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                                top: 1,
                                right: 11,
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
                          Align(
                            alignment: Alignment.centerLeft,
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
                        ],
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
