import '../models/cats/model_response_cat.dart';

abstract class InterfaceCatRepository {
  Future<List<RequestDadaJsonModelCat>> resultDateofCats();
}
