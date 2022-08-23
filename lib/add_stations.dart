
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/widgets%20copy/custom_button.dart';
import 'package:mapbox_turn_by_turn/widgets%20copy/custom_text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/constants/constants.dart';
import 'core/utils/color_constant.dart';
import 'core/utils/math_utils.dart';
import 'package:http/http.dart' as http;


class Iphone1313ProSeventyeightScreen extends StatefulWidget {

  @override
  State<Iphone1313ProSeventyeightScreen> createState() => _Iphone1313ProSeventyeightScreenState();
}

class _Iphone1313ProSeventyeightScreenState extends State<Iphone1313ProSeventyeightScreen> {


    TextEditingController stationNameController = TextEditingController();
  TextEditingController streetNameController = TextEditingController();
  TextEditingController cityNameController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
    TextEditingController typeofchargerController = TextEditingController();
      TextEditingController speedofchargerController = TextEditingController();




  var responsee;
  String? userid;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  addStation()async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    Uri url = Uri.parse("${Constants.url}getallstations");
    final response = await http.post(url, body: {"userid":userid,"stationname":stationNameController.text,"address":streetNameController.text + " " + cityNameController.text +" " + pincodeController.text,"lattitude":"","logitude":"","typeofvcharger":typeofchargerController.text,"speedofcharge":speedofchargerController.text});
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    responsee = decodedResponse;
    return decodedResponse;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 26,
                          top: 83,
                          right: 26,
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
                          left: 26,
                          top: 58,
                          right: 26,
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
                        left: 26,
                        top: 16,
                        right: 26,
                      ),
                      // padding: TextFormFieldPadding.PaddingTB14,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 28,
                        top: 38,
                        right: 28,
                      ),
                      child: Text(
                        "Street name",
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
                      hintText: "Enter your Street name",
                      margin: getMargin(
                        left: 26,
                        top: 19,
                        right: 26,
                      ),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 28,
                        top: 39,
                        right: 28,
                      ),
                      child: Text(
                        "City",
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
                      hintText: "Enter your City name",
                      margin: getMargin(
                        left: 26,
                        top: 16,
                        right: 26,
                      ),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 28,
                        top: 37,
                        right: 28,
                      ),
                      child: Text(
                        "Pincode",
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
                      hintText: "Enter your Pincode",
                      margin: getMargin(
                        left: 26,
                        top: 20,
                        right: 26,
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                    ),
                                        Padding(
                      padding: getPadding(
                        left: 28,
                        top: 37,
                        right: 28,
                      ),
                      child: Text(
                        "Type of Charger",
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
                      hintText: "Enter your charger type",
                      margin: getMargin(
                        left: 26,
                        top: 20,
                        right: 26,
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                    ),

                    Padding(
                      padding: getPadding(
                        left: 28,
                        top: 37,
                        right: 28,
                      ),
                      child: Text(
                        "Speed of Charger",
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
                      hintText: "Enter your charger speed",
                      margin: getMargin(
                        left: 26,
                        top: 20,
                        right: 26,
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                    ),
                    CustomButton(
                      width: 332,
                      text: "Confirm & Save",
                      margin: getMargin(
                        left: 26,
                        top: 74,
                        right: 26,
                        bottom: 20,
                      ),
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
