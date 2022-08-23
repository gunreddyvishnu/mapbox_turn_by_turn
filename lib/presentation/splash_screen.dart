// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/sign_in.dart';
// import 'package:application11/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/presentation/home_screen.dart';
import 'package:mapbox_turn_by_turn/presentation/sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../core/constants/constants.dart';
import '../widgets copy/custom_button.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


String? userid;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserId();

  }

  getUserId()async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    print(userid);

                            if(userid == null){
                      // do nothing
                    }else if(userid!.isNotEmpty == true){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ColorConstant.bluegray701,
              ],
            ),
          ),
          child: Container(
            child: Column(

              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));



                    
                  },
                  width: 332,
                  text: "Sign in",
                  margin: getMargin(
                    left: 29,
                    top: 540,
                    right: 29,
                  ),
                  variant: ButtonVariant.OutlineTealA400,
                  fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  width: 332,
                  text: "Register",
                  margin: getMargin(
                    left: 29,
                    top: 40,
                    right: 29,
                  ),
                  fontStyle: ButtonFontStyle.PoppinsSemiBold20,
                ),
                Container(
                  width: getHorizontalSize(292.00,),
                  margin: getMargin(
                    left: 29,
                    top: 41,
                    right: 29,
                    bottom: 20,
                  ),
                  child: Text(
                    "“One stop app to find charging point\nfor any of your electric vehicle”",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.whiteA700A2,
                      fontSize: getFontSize(
                        15,
                      ),
                      // fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.45,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
