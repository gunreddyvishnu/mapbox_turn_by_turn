// import 'package:application11/core/app_export.dart';
// import 'package:application11/widgets/custom_search_view.dart';
// import 'package:application11/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../../widgets copy/custom_text_form_field.dart';

class Iphone1313ProEightScreen extends StatelessWidget {
  TextEditingController frameSevenController = TextEditingController();

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 27,
                        top: 77,
                        right: 27,
                      ),
                      child: Text(
                        "Select your EV Brand",
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
                    CustomSearchView(
                      width: 334,
                      focusNode: FocusNode(),
                      controller: frameSevenController,
                      hintText: "Search",
                      margin: getMargin(
                        left: 27,
                        top: 54,
                        right: 27,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          left: 22,
                          top: 15,
                          right: 23,
                          bottom: 16,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgSearch,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          19.00,
                        ),
                        minHeight: getSize(
                          19.00,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "Ather",
                      margin: getMargin(
                        left: 27,
                        top: 62,
                        right: 27,
                      ),
                      variant: TextFormFieldVariant.FillTeal300,
                      fontStyle: TextFormFieldFontStyle.RobotoRomanRegular16,
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "Hyundai",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "KAL",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "KIA",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "MG Motors",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "Tata",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "Vidhyut",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                      ),
                    ),
                    CustomTextFormField(
                      width: 330,
                      focusNode: FocusNode(),
                      hintText: "Other",
                      margin: getMargin(
                        left: 27,
                        top: 12,
                        right: 27,
                        bottom: 20,
                      ),
                      textInputAction: TextInputAction.done,
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
