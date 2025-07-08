import 'package:first_project/app.dart';
import 'package:first_project/core/service/local_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStorageService.instance.init();

  runApp(const MyApp());
}
