import 'dart:convert';

// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/about_me.dart';
// import 'package:application11/widgets/custom_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';
import '../widgets copy/custom_button.dart';
import '../widgets copy/custom_text_form_field.dart';
import 'about_me.dart';
class OtpVerification extends StatefulWidget {
  int? token;

  OtpVerification({this.token});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  String? userid;
  String? mobile;
  TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  postOtp() async {
    try {
      http.Response response =
          await http.post(Uri.parse(Constants.url + 'verifi'), body: {
        'code': '${otpController.text.toString()}',
        'token': '${widget.token}',
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print(response.body);
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('userid', data['userid']);
        userid = sharedPreferences.getString('userid');
        print(userid);
        if (data['status'] == 'good') {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AboutMe()));
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(

image: DecorationImage(image: AssetImage("assets/image3.png"),fit: BoxFit.fill,opacity: 0.3),
            
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
                      left: 28,
                      top: 151,
                      right: 28,
                    ),
                    child: Text(
                      "Verification OTP",
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
                  CustomTextFormField(
                      controller: otpController,
                      readOnly: false,
                      width: 334,
                      focusNode: FocusNode(),
                      hintText: "Enter OTP",
                      margin: getMargin(
                        left: 27,
                        top: 21,
                        right: 27,
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                    ),
                  // Container(
                  //   width: getHorizontalSize(
                  //     289.00,
                  //   ),
                  //   margin: getMargin(
                  //     left: 28,
                  //     top: 8,
                  //     right: 28,
                  //   ),
                  //   child: Text(
                  //     "We Have Sent an Verification OTP to your Mobile number:\nxxxxxxxx9",
                  //     maxLines: null,
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       color: ColorConstant.whiteA700E5,
                  //       fontSize: getFontSize(
                  //         16,
                  //       ),
                  //       fontFamily: 'Poppins',
                  //       fontWeight: FontWeight.w400,
                  //       letterSpacing: 0.48,
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   height: getVerticalSize(
                  //     62.00,
                  //   ),
                  //   width: getHorizontalSize(
                  //     332.00,
                  //   ),
                  //   margin: getMargin(
                  //     left: 28,
                  //     top: 47,
                  //     right: 28,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(
                  //       getHorizontalSize(
                  //         8.00,
                  //       ),
                  //     ),
                  //     border: Border.all(
                  //       color: ColorConstant.tealA400E5,
                  //       width: getHorizontalSize(
                  //         2.00,
                  //       ),
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  //     child: TextField(
                  //       controller: otpController,
                  //       // keyboardType: TextInputType.number,
                  //       style: TextStyle(color: Colors.white),
                  //       decoration: InputDecoration(
                  //         border: InputBorder.none,
                  //       ),
                  //       cursorColor: ColorConstant.tealA400E5,
                  //     ),
                  //   ),
                  // ),
                  Container(
                    margin: getMargin(
                      left: 28,
                      top: 16,
                      right: 28,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Didn’t receive OTP?                           ',
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Resend',
                            style: TextStyle(
                              color: ColorConstant.tealA400,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.45,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      postOtp();
                    },
                    width: 332,
                    text: "Verify",
                    margin: getMargin(
                      left: 28,
                      top: 16,
                      right: 28,
                      bottom: 20,
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
