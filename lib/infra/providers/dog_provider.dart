import '../models/dogs/model_response_dog.dart';
import '../respositorys/dog_respository.dart';

class DogProvider {
  final DogRespository _catRespository;

  DogProvider(this._catRespository);

  Future<List<ResponseModelDog>> resultDateofDogs() async {
    return _catRespository.resultDateofDogs();
  }
}
