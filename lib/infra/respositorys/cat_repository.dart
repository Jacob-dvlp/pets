import 'dart:convert';

import '../../constants/const.dart';
import '../../routes/app_imports_page.dart';
import '../interface/interface_cat_repository.dart';
import '../models/cats/model_response_cat.dart';

class CatRepository extends InterfaceCatRepository {
  int page = 0;
  final GetConnect connect;

  CatRepository(this.connect);

  List<RequestDadaJsonModelCat> responseModel = [];

  @override
  Future<List<RequestDadaJsonModelCat>> resultDateofCats() async {
    Map<String, String> headers = {
      'Authorization': keyCat,
    };
    final response = await connect.get(
      dnsCat,
      headers: headers,
    );
    if (response.statusCode == 200) {
      final convert = jsonEncode(response.body);
      final listCats = requestDadaJsonModelCatFromJson(convert);
      responseModel = listCats;
    } else {}

    return responseModel;
  }
}
