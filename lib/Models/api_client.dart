import 'dart:convert';
import 'dart:io';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

final apiClientProvider = Provider.autoDispose(
  (_) => ApiClient(),
);

class ApiClient {
  factory ApiClient({String baseUrl = 'https://newsapi.org/v2/everything?'}) {
    return _instance ??= ApiClient._internal(baseUrl);
  }
  // クラス生成時に instance を生成する class コンストラクタ
  ApiClient._internal(this.baseUrl);
  // singleton にする為の instance キャッシュ
  static ApiClient _instance;
  final String baseUrl;

  Future<String> get(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    print('$baseUrl$endpoint');
    try {
      print('ApiClient => InTry');
      final response = await http.get(url);
      final code = response.statusCode;
      print('ApiClient => response status = $code');
      return _parseResponse(response.statusCode, response.body);
    } on SocketException {
      throw Exception('No Internet connection');
    }
  }

  String _parseResponse(int httpStatus, String responseBody) {
    switch (httpStatus) {
      case 200:
        //print(responseBody);
        print('ApiClient => _parseResponse = $responseBody');
        return responseBody;
        break;
      default:
        final decodedJson = json.decode(responseBody) as Map<String, dynamic>;
        throw Exception('$httpStatus: ${decodedJson['message']}');
        break;
    }
  }
}
