import '../core/enum/registration_error.dart';
import '../core/result.dart';
import '../model/user.dart';

abstract interface class AuthRepository {
  Future<Result<User, RegistrationError>> registerUser({
    required String email,
    required String password,
  });
}
