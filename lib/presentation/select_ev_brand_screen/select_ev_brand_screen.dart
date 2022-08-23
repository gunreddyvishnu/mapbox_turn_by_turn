import 'dart:convert';

// import 'package:application11/core/app_export.dart';
// import 'package:application11/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../core/constants/constants.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../widgets copy/common_image_view.dart';
import '../../widgets copy/custom_search_view.dart';
import '../model_screen.dart';

class SelectEvBrandScreen extends StatefulWidget {
  String? type;

  SelectEvBrandScreen({required this.type});

  @override
  State<SelectEvBrandScreen> createState() => _SelectEvBrandScreenState();
}

class _SelectEvBrandScreenState extends State<SelectEvBrandScreen> {
  var selectedBrands;

  TextEditingController frameSevenController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    Uri url = Uri.parse("${Constants.url}selectyourbrand");
    final response =
        await http.post(url, body: {'type': widget.type.toString()});
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    selectedBrands = decodedResponse;
    print(selectedBrands);
    setState(() {});
    return decodedResponse["modellist"];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
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
                      alignment: Alignment.center,
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 28,
                          top: 40,
                          right: 28,
                        ),
                        child: Text(
                          "Most searched brands",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.tealA20099,
                            fontSize: getFontSize(
                              15,
                            ),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    selectedBrands == null
                        ? Container()
                        : Expanded(
                            child: ListView.builder(
                                itemCount: selectedBrands.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ModelScreen(
                                                      model: selectedBrands[
                                                                  "modellist"]
                                                              [index]["brand"]
                                                          .toString(),
                                                      type: '2_wheeler',
                                                    )));
                                      },
                                      child: Card(
                                        child: ListTile(
                                          title: Text(selectedBrands["modellist"]
                                                  [index]["brand"]
                                              .toString()),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
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
