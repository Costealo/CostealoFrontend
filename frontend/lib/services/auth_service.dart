import '../models/user.dart';
import 'api_client.dart';

class AuthService {
  final ApiClient _client;

  AuthService(this._client);

  // Más adelante se implementará con peticiones HTTP.
  Future<User?> login(String email, String password) async {
    // TODO: implementar
    return null;
  }

  Future<User?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    // TODO: implementar
    return null;
  }
}

