import 'package:flutter/material.dart';
import 'package:flutter_base/data/providers/shared_preferences/data_provider.dart';

import 'app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DataProvider().init();

  runApp(MyApp());
}
