import 'package:auvnet_internship_ecommerce/domain/entities/user.dart';

abstract class UserRepository {
  Future<User?> login(String email, String password);
}
