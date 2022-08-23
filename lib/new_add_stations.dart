import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/widgets%20copy/common_image_view.dart';
import 'package:mapbox_turn_by_turn/widgets%20copy/custom_button.dart';

import 'core/utils/color_constant.dart';
import 'core/utils/image_constant.dart';
import 'core/utils/math_utils.dart';
import 'widgets copy/custom_text_form_field.dart';

class testScreen extends StatelessWidget {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 83,
                          right: 19,
                        ),
                        child: Text(
                          "Add Station",
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
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 58,
                          right: 19,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 4,
                              ),
                              child: Text(
                                "Station name",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 53,
                                top: 1,
                              ),
                              child: Text(
                                "All fields are required",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.gray300,
                                  fontSize: getFontSize(
                                    16,
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
                    CustomTextFormField(
                      readOnly: false,
                      width: 334,
                      focusNode: FocusNode(),
                      hintText: "Enter a Station name",
                      margin: getMargin(
                        left: 19,
                        top: 8,
                        right: 19,
                      ),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 27,
                        top: 28,
                        right: 27,
                      ),
                      child: Text(
                        "Address",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      readOnly: false,
                      width: 334,
                      focusNode: FocusNode(),
                      hintText: "Enter your Address",
                      margin: getMargin(
                        left: 19,
                        top: 11,
                        right: 19,
                      ),
                      // padding: TextFormFieldPadding.PaddingT16,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 30,
                        right: 24,
                      ),
                      child: Text(
                        "Charger Speed",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 19,
                          top: 4,
                          right: 19,
                        ),
                        decoration: BoxDecoration(
                          // color: ColorConstant.bluegray500,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              8.00,
                            ),
                          ),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomButton(
                              width: 114,
                              text: "Fast charger ",
                              margin: getMargin(
                                left: 13,
                                top: 10,
                                bottom: 10,
                              ),
                            ),
                            CustomButton(
                              width: 114,
                              text: "Slow charger ",
                              margin: getMargin(
                                left: 13,
                                top: 10,
                                bottom: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 19,
                        top: 40,
                        right: 19,
                      ),
                      child: Text(
                        "Socket Type",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 24,
                          right: 19,
                        ),
                        // child: CommonImageView(
                        //   svgPath: ImageConstant.imgSockets,
                        //   height: getVerticalSize(
                        //     138.00,
                        //   ),
                        //   width: getHorizontalSize(
                        //     275.00,
                        //   ),
                        // ),
                        child: Column(
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          CommonImageView(
                            imagePath: 'assets/images/socket 1.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 2.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 3.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 4.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 5.png',
                          ),
                          ],),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                          CommonImageView(
                            imagePath: 'assets/images/socket 1 AC.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 2 AC.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 3.png',
                          ),
                          CommonImageView(
                            imagePath: 'assets/images/socket 4.png',
                          ),
                          ],),
                        ],),
                      ),
                    ),
                    CustomButton(
                      width: 332,
                      text: "Confirm & Save",
                      margin: getMargin(
                        left: 19,
                        top: 52,
                        right: 19,
                        bottom: 20,
                      ),
                      variant: ButtonVariant.OutlineTealA400,
                      shape: ButtonShape.CircleBorder31,
                      // padding: ButtonPadding.PaddingAll21,
                      fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                      alignment: Alignment.center,
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
