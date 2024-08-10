import 'package:auvnet_internship_ecommerce/domain/entities/user.dart';
import 'package:auvnet_internship_ecommerce/domain/repositoreis/user_repository.dart';

class MockUserRepository implements UserRepository {
  @override
  Future<User?> login(String email, String password) async {
    // Simulate network call and response
    await Future.delayed(Duration(seconds: 2));
    return User(id: '1', email: email);
  }
}
