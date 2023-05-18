import 'package:flutter/material.dart';

import 'app.dart';
import 'injector/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: change to dev
  await configureDependencies(env: 'prod');

  runApp(const App());
}
