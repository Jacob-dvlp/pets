import '../models/cats/model_response_cat.dart';
import '../respositorys/cat_repository.dart';

class CatProvider {
  final CatRepository _catRepository;

  CatProvider(this._catRepository);

  Future<List<RequestDadaJsonModelCat>> resultDateofCats() async {
    return _catRepository.resultDateofCats();
  }
}
