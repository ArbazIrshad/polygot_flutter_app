import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/authentication/presentation/views/language_selection_view.dart';
import 'package:polygot_app/features/authentication/presentation/views/welcome_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/practice_view.dart';

import 'features/authentication/presentation/views/login_view.dart';
import 'shared/themes.dart';

void main() {
  runApp(const PolygotApp());
}

class PolygotApp extends StatelessWidget {
  const PolygotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PolyGotApp',
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
      theme: CustomTheme.darkTheme,
    );
  }
}
