import '../models/database_item.dart';
import 'api_client.dart';

class DatabaseService {
  final ApiClient _client;

  DatabaseService(this._client);

  Future<List<DatabaseItem>> getItems() async {
    // TODO: implementar
    return [];
  }

  Future<DatabaseItem?> addItem(DatabaseItem item) async {
    // TODO: implementar
    return null;
  }
}

