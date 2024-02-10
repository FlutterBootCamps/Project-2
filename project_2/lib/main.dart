import 'package:flutter/material.dart';

import 'kid_game_view/home_screen_view.dart';
import 'kid_game_view/log_in_screen_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInScreenView()
    );
  }
}
