import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      home: SafeArea(child: LoginView()),
      theme: CustomTheme.darkTheme,
    );
  }
}
