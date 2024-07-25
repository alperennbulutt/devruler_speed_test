import 'package:speedtest/src/data/repository/services/login_service.dart';
import 'package:speedtest/src/data/repository/services/register_service.dart';

class Repository {
  Repository._privateConstructor();

  static final Repository instance = Repository._privateConstructor();
  final LoginService loginService = LoginService();
  final RegisterService registerService = RegisterService();

  Future<void> login(String email, String password) async {
    await loginService.login(email, password);
  }

  Future<void> register(String email, String password) async {
    await registerService.register(email, password);
  }
}
