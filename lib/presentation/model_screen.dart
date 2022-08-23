import 'dart:convert';

// import 'package:application11/core/app_export.dart';
// import 'package:application11/presentation/home_screen.dart';
// import 'package:application11/widgets/custom_button.dart';
// import 'package:application11/widgets/custom_text_form_field.dart';
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
import 'home_screen.dart';
class ModelScreen extends StatefulWidget {
  String? model;

  String? type;

  ModelScreen({required this.model, required this.type});

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  TextEditingController vNumber = TextEditingController();

  String? userid;

  var modelData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchModels();
  }

  fetchModels() async {
    Uri url = Uri.parse("${Constants.url}getmodels");
    final response = await http
        .post(url, body: {'type': widget.type.toString(), 'brand': widget.model.toString()});
    print(response.body);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    modelData = decodedResponse;
    print(modelData['modelslist'][0]['model']);
    setState(() {});
    return decodedResponse;
  }

  postModel() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    userid = sharedPreferences.getString('userid');
    Uri url = Uri.parse("${Constants.url}addmyvehicle");
    final response = await http.post(url, body: {
      'v_no': vNumber.text.toString(),
      'vehicle_brand': 'ATHER',
      'model': modelData['modelslist'][0]['model'],
      'userid': userid,
    });
    
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      print(response.body);
      if (data['status'] == 'good') {
        print('done');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else if (data['status'] == 'bad') {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => AddYourVehicleScreen()));
        //homescreen
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                  Padding(
                    padding: getPadding(
                      left: 47,
                      top: 239,
                      right: 47,
                    ),
                    child: Text(
                      "MODELS",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          20,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  modelData == null
                      ? Container()
                      : CustomTextFormField(
                          readOnly: true,
                          width: 269,
                          focusNode: FocusNode(),
                          hintText:
                              modelData['modelslist'][0]['model'].toString(),
                          margin: getMargin(
                            left: 47,
                            top: 10,
                            right: 47,
                          ),
                          variant: TextFormFieldVariant.FillTeal300,
                          fontStyle:
                              TextFormFieldFontStyle.RobotoRomanRegular16,
                        ),
                  // ListView.builder(
                  //     itemCount: modelData.length,
                  //     itemBuilder: (context, index) {
                  //       return CustomTextFormField(
                  //         readOnly: true,
                  //         width: 269,
                  //         focusNode: FocusNode(),
                  //         hintText: modelData[index].model,
                  //         margin: getMargin(
                  //           left: 47,
                  //           top: 10,
                  //           right: 47,
                  //         ),
                  //         variant: TextFormFieldVariant.FillTeal300,
                  //         fontStyle:
                  //             TextFormFieldFontStyle.RobotoRomanRegular16,
                  //       );
                  //     }),
                  Padding(
                    padding: getPadding(
                      left: 47,
                      top: 32,
                      right: 47,
                    ),
                    child: Text(
                      "VEHICLE No. (VIN)*",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          20,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    controller: vNumber,
                    readOnly: false,
                    width: 269,
                    focusNode: FocusNode(),
                    margin: getMargin(
                      left: 47,
                      top: 10,
                      right: 47,
                    ),
                    variant: TextFormFieldVariant.OutlineTeal300,
                    textInputAction: TextInputAction.done,
                  ),
                  CustomButton(
                    onTap: () {
                      postModel();
                    },
                    width: 332,
                    text: "Finish",
                    margin: getMargin(
                      left: 29,
                      top: 254,
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
    );
  }
}
