class LoginService {
  Future<void> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    print('Logged in with email: $email and password: $password');
  }
}
