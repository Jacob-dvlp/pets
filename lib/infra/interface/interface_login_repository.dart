import '../models/user/user_response.dart';

abstract class InterfaceLoginRepository {
  Future<List<RequestDadaJsonModelLogin>> loginUser();
}
