import 'package:network/src/dto/user/login_response.dart';

abstract class UserApiService {
  Future<LoginResponse> login(String username, String password);
}
