class RegisterService {
  Future<void> register(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    print('Registering user with email: $email and password: $password');
  }
}
