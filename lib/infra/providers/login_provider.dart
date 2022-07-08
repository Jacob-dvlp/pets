import '../models/user/user_response.dart';
import '../respositorys/login_repository.dart';

class LoginProvider {
  final LoginRepository loginRepository;

  LoginProvider(this.loginRepository);

  Future<List<RequestDadaJsonModelLogin>> loginUser() async {
    return loginRepository.loginUser();
  }
}
