import 'dart:convert';

import '../../constants/const.dart';
import '../../routes/app_imports_page.dart';
import '../interface/interface_dog_repository.dart';
import '../models/dogs/model_response_dog.dart';

class DogRespository extends InterfaceDogRepository {
  final GetConnect connect;

  DogRespository(this.connect);

  List<ResponseModelDog> responseModel = [];

  @override
  Future<List<ResponseModelDog>> resultDateofDogs() async {
    Map<String, String> headers = {
      'Authorization': keyDog,
    };
    final response = await connect.get(
      dnsDogs,
      headers: headers,
    );
    if (response.statusCode == 200) {
      final convert = jsonEncode(response.body);
      final listDogs = responseModelDogFromJson(convert);
      responseModel = listDogs;
    } else {}

    return responseModel;
  }
}
