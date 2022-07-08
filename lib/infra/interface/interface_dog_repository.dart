import '../models/dogs/model_response_dog.dart';

abstract class InterfaceDogRepository {
  Future<List<ResponseModelDog>> resultDateofDogs();
}