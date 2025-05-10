import 'package:domain/domain.dart';

class LoginState {
  final String username;
  final String password;
  final bool isLoading;
  final User? user = null;

  const LoginState({
    this.username = '',
    this.password = '',
    this.isLoading = false,
    User? user = null,
  });

  LoginState copyWith(
      {String? username, String? password, bool? isLoading, User? user}) {
    return LoginState(
        username: username ?? this.username,
        password: password ?? this.password,
        isLoading: isLoading ?? this.isLoading,
        user: user ?? user);
  }
}
