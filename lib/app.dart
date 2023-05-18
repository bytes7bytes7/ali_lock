import 'package:flutter/material.dart';

import 'screens/my_lockers_screen.dart';
import 'themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const MyLockersScreen(),
    );
  }
}
