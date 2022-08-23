import 'dart:convert';

// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/otp_verification.dart';
// import 'package:application11/widgets/custom_button.dart';
import 'package:flutter/foundation.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets copy/custom_button.dart';
import '../widgets copy/custom_text_form_field.dart';
import 'otp_verification.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String? mobile;
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  postNumber() async {
    try {
      http.Response response =
          await http.post(Uri.parse(Constants.url + 'Signin'), body: {
        'phonenuber': '${phoneController.text}',
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print(data);
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('mobile', phoneController.text.toString());
        mobile = sharedPreferences.getString('mobile');
        print(mobile);
        if (data['status'] == 'good') {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => OtpVerification()));
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(


              decoration: BoxDecoration(

// image:AssetImage("assets/image1.png"),fit: BoxFit.fill),
// image2.png

// image: DecorationImage(image: AssetImage("assets/image2.png"),fit: BoxFit.fill,opacity: 0.3),
            

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
                          left: 29,
                          top: 157,
                          right: 29,
                        ),
                        child: Text(
                          "Sign in",
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
                    Padding(
                      padding: getPadding(
                        left: 29,
                        top: 60,
                        right: 29,
                      ),
                      child: Text(
                        "Mobile Number",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      controller: phoneController,
                      readOnly: false,
                      width: 334,
                      focusNode: FocusNode(),
                      hintText: "Enter your mobile number",
                      margin: getMargin(
                        left: 27,
                        top: 21,
                        right: 27,
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                    ),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: Container(
                    //     height: getVerticalSize(
                    //       62.00,
                    //     ),
                    //     width: getHorizontalSize(
                    //       332.00,
                    //     ),
                    //     margin: getMargin(
                    //       left: 29,
                    //       top: 8,
                    //       right: 29,
                    //     ),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(
                    //         getHorizontalSize(
                    //           8.00,
                    //         ),
                    //       ),
                    //       border: Border.all(
                    //         color: ColorConstant.tealA400E5,
                    //         width: getHorizontalSize(
                    //           2.00,
                    //         ),
                    //       ),
                    //     ),
                    //     child: Padding(
                    //       padding:
                    //           const EdgeInsets.only(left: 25.0, right: 25.0),
                    //       child: TextField(
                    //         controller: phoneController,
                    //         keyboardType: TextInputType.number,
                    //         style: TextStyle(color: Colors.white),
                    //         decoration: InputDecoration(
                    //           border: InputBorder.none,
                    //         ),
                    //         cursorColor: ColorConstant.tealA400E5,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    CustomButton(
                      onTap: () {
                        postNumber();
                      },
                      width: 332,
                      text: "Get OTP",
                      margin: getMargin(
                        left: 29,
                        top: 57,
                        right: 29,
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
