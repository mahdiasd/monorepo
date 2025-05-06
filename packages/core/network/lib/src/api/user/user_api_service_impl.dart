import 'package:injectable/injectable.dart';
import 'package:network/src/api/user/user_api_service.dart';
import 'package:network/src/dto/user/login_response.dart';

@LazySingleton(as: UserApiService)
class UserApiServiceImpl extends UserApiService {
  @override
  Future<LoginResponse> login(String username, String password) {
    throw UnimplementedError();
  }
}
