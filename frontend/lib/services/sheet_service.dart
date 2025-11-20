import '../models/sheet.dart';
import 'api_client.dart';

class SheetService {
  final ApiClient _client;

  SheetService(this._client);

  Future<List<Sheet>> getSheets() async {
    // TODO: implementar
    return [];
  }

  Future<Sheet?> createSheet(Sheet sheet) async {
    // TODO: implementar
    return null;
  }
}

