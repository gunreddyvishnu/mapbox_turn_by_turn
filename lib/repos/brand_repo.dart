// import 'package:application11/core/app_export.dart';
import 'package:http/http.dart' as http;

import '../core/constants/constants.dart';
import '../model/type_of_user_list.dart';

class BrandRepo {
  Future<BrandTypeResponse> getbrandType(String type) async {
    Uri url = Uri.parse("${Constants.url}/selectyourbrand");
    final response = await http.post(url, body: {'type': type});
    return brandTypeResponseFromJson(response.body);
  }
}
