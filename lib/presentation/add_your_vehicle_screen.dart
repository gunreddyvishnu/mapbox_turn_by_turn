// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/select_ev_brand_screen/select_ev_brand_screen.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/presentation/select_ev_brand_screen/select_ev_brand_screen.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';
class AddYourVehicleScreen extends StatefulWidget {
  @override
  State<AddYourVehicleScreen> createState() => _AddYourVehicleScreenState();
}

class _AddYourVehicleScreenState extends State<AddYourVehicleScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width,
                      margin: getMargin(
                        left: 59,
                        top: 77,
                        right: 59,
                      ),
                      child: Container(
                        height: getVerticalSize(
                          48.00,
                        ),
                        width: getHorizontalSize(
                          269.00,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Add your Vehicle",
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
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Add your Vehicle",
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SelectEvBrandScreen(type: '2_wheeler')));
                      },
                      child: Container(
                        height: getVerticalSize(
                          110.00,
                        ),
                        width: getHorizontalSize(
                          114.00,
                        ),
                        margin: getMargin(
                          left: 59,
                          top: 60,
                          right: 59,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgImage34,
                                  height: getVerticalSize(
                                    110.00,
                                  ),
                                  width: getHorizontalSize(
                                    114.00,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgImage34,
                                  height: getVerticalSize(
                                    110.00,
                                  ),
                                  width: getHorizontalSize(
                                    114.00,
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
                        left: 59,
                        top: 10,
                        right: 59,
                      ),
                      child: Text(
                        "Two Wheeler",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SelectEvBrandScreen(type: '3_wheeler')));
                      },
                      child: Padding(
                        padding: getPadding(
                          left: 59,
                          top: 53,
                          right: 59,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              14.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage33,
                            height: getVerticalSize(
                              108.00,
                            ),
                            width: getHorizontalSize(
                              128.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 59,
                        top: 10,
                        right: 59,
                      ),
                      child: Text(
                        "Three Wheeler",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SelectEvBrandScreen(type: '4_wheeler')));
                      },
                      child: Padding(
                        padding: getPadding(
                          left: 59,
                          top: 53,
                          right: 59,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              15.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgWepik2022529,
                            height: getVerticalSize(
                              124.00,
                            ),
                            width: getHorizontalSize(
                              128.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        133.00,
                      ),
                      width: getHorizontalSize(
                        107.00,
                      ),
                      margin: getMargin(
                        left: 59,
                        top: 10,
                        right: 59,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                right: 1,
                                bottom: 10,
                              ),
                              child: Text(
                                "Four Wheeler",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
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
          ),
        ),
      ),
    );
  }
}
