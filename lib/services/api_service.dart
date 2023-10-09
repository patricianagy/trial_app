import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class ApiService extends ChangeNotifier {
  Ref ref;
  ApiService(this.ref);

  String baseUrl = 'https://trial.peakbit.tech/';

  Future<void> getToken() async {
    final uri = Uri.parse('$baseUrl/api/token/generate/ANDROID)');
    final response = await http.get(uri);
    print(response.body);
  }

  Future<void> fetchArticles() async {
    final uri = Uri.parse('${baseUrl}api/articles/list)');
    final response = await http.get(uri);
    print(response.body);
  }
}
