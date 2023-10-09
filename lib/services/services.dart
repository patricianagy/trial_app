import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial_app/services/api_service.dart';

class Services {
  static final ChangeNotifierProvider<ApiService> api =
      ChangeNotifierProvider<ApiService>((ref) => ApiService(ref));
}
