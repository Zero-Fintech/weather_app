import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';
import 'src/service_locator.dart';

void main() async {
  setupServices();
  setupViewModels();
  await dotenv.load(fileName: 'assets/.env');
  runApp(const MyApp());
}
