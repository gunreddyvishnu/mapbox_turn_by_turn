import 'dart:convert';

// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/add_your_vehicle_screen.dart';
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
import 'add_your_vehicle_screen.dart';
class SelectUser extends StatefulWidget {
  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  String? userid;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  postUserType(String typeofuser) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    try {
      http.Response response = await http.post(
          Uri.parse(Constants.url + 'typeofuser'),
          body: {'userid': '$userid', 'typeofuser': typeofuser});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print(response.body);
        if (data['status'] == 'bad') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddYourVehicleScreen()));
        } else if (data['status'] == 'good') {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => AddYourVehicleScreen()));
          //homescreen
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
                children: [
                  CustomButton(
                    onTap: () {
                      postUserType('ev_user');
                    },
                    width: 332,
                    text: "EV USER",
                    margin: getMargin(
                      left: 33,
                      top: 308,
                      right: 25,
                    ),
                    variant: ButtonVariant.OutlineWhiteA700,
                    shape: ButtonShape.RoundedBorder20,
                    fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                  ),
                  CustomButton(
                    onTap: () {
                      postUserType('station_operator');
                    },
                    width: 332,
                    text: "STATION OPERATOR",
                    margin: getMargin(
                      left: 33,
                      top: 40,
                      right: 25,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.OutlineWhiteA700,
                    shape: ButtonShape.RoundedBorder20,
                    fontStyle: ButtonFontStyle.PoppinsSemiBold20,
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
