import 'package:http/http.dart' as http;
import 'dart:convert';

class EHttpHelper {
  static const String _base_url = 'https://your-base-api-uri';

  //helper method for making a GET Request

  static Future<Map<String, dynamic>> get(String endPoint) async {
    final res = await http.get(Uri.parse('$_base_url/$endPoint'));
    return _handleResponse(res);
  }

  //methpod for making a POST call
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final res = await http.post(
      Uri.parse('$_base_url/$endPoint'),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    return _handleResponse(res);
  }

  //method for making a PUT call
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final res = await http.put(
      Uri.parse('$_base_url/$endPoint'),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );

    return _handleResponse(res);
  }

  //method for making a DELETE call
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final res = await http.delete(Uri.parse('$_base_url/$endPoint'));
    return _handleResponse(res);
  }

  //handle HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
