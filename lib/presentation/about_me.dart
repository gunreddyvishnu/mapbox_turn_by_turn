import 'dart:convert';

// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/select_user.dart';
// import 'package:application11/widgets/custom_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mapbox_turn_by_turn/presentation/select_user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';
import '../widgets copy/custom_button.dart';
import '../widgets copy/custom_text_form_field.dart';
import 'add_your_vehicle_screen.dart';
// import '../model_screen.dart';
class AboutMe extends StatefulWidget {
  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  String? userid;
  String? mobile;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  postAbout() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    mobile = sharedPreferences.getString('mobile');
    print(userid);
    print(mobile);
    try {
      http.Response response =
          await http.post(Uri.parse(Constants.url + 'updateuserinfo'), body: {
        'userid': userid,
        'firstname': '${firstNameController.text.toString()}',
        'lastname': '${lastNameController.text.toString()}',
        'email': '${emailController.text.toString()}',
        'mobilenum': '${mobileNumberController.text.toString()}',
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print(response.body);
        if (data['status'] == 'uploaded userdata') {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AddYourVehicleScreen()));
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

image: DecorationImage(image: AssetImage("assets/image4.png"),fit: BoxFit.fill,opacity: 0.2),
            

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
                        left: 28,
                        top: 77,
                        right: 28,
                      ),
                      child: Text(
                        "About Me",
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
                      left: 28,
                      top: 16,
                      right: 28,
                    ),
                    child: Text(
                      "First Name",
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
                      controller: firstNameController,
                      readOnly: false,
                      width: 334,
                      focusNode: FocusNode(),
                      hintText: "Enter your first name",
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
                  //       left: 28,
                  //       top: 8,
                  //       right: 28,
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
                  //       padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  //       child: TextField(
                  //         controller: firstNameController,
                  //         // keyboardType: TextInputType.number,
                  //         style: TextStyle(color: Colors.white),
                  //         decoration: InputDecoration(
                  //           border: InputBorder.none,
                  //         ),
                  //         cursorColor: ColorConstant.tealA400E5,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: getPadding(
                      left: 28,
                      top: 24,
                      right: 28,
                    ),
                    child: Text(
                      "Last Name",
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
                      controller: lastNameController,
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
                  //       left: 28,
                  //       top: 8,
                  //       right: 28,
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
                  //       padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  //       child: TextField(
                  //         controller: lastNameController,
                  //         // keyboardType: TextInputType.number,
                  //         style: TextStyle(color: Colors.white),
                  //         decoration: InputDecoration(
                  //           border: InputBorder.none,
                  //         ),
                  //         cursorColor: ColorConstant.tealA400E5,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: getPadding(
                      left: 28,
                      top: 24,
                      right: 28,
                    ),
                    child: Text(
                      "Email ",
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
                      controller: emailController,
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
                  //       left: 28,
                  //       top: 8,
                  //       right: 28,
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
                  //       padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  //       child: TextField(
                  //         controller: emailController,
                  //         // keyboardType: TextInputType.number,
                  //         style: TextStyle(color: Colors.white),
                  //         decoration: InputDecoration(
                  //           border: InputBorder.none,
                  //         ),
                  //         cursorColor: ColorConstant.tealA400E5,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: getPadding(
                      left: 29,
                      top: 24,
                      right: 29,
                    ),
                    child: Text(
                      "Mobile Number",
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
                      controller: mobileNumberController,
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
                  //       left: 28,
                  //       top: 8,
                  //       right: 28,
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
                  //       padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  //       child: TextField(
                  //         controller: mobileNumberController,
                  //         // keyboardType: TextInputType.number,
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
                      postAbout();
                    },
                    width: 332,
                    text: "Sign Up",
                    margin: getMargin(
                      left: 28,
                      top: 72,
                      right: 28,
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
    );
  }
}
