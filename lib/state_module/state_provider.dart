import 'package:assignment_clone/basic_module/basic_app.dart';
import 'package:flutter/material.dart';
import 'package:assignment_clone/state_module/theme_logic.dart';
import 'package:provider/provider.dart';

Widget stateProvider() {
  return MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ThemeLogin())],
    child: BasicApp(),
  );
}
