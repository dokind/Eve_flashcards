import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my_app.dart';
import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DenpendencyInjection.init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}
