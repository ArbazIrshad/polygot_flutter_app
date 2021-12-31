import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/daily_review/presentation/views/daily_review_dialog.dart';
import 'package:polygot_app/features/daily_review/presentation/views/daily_review_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/exercise_view.dart';

import 'features/authentication/presentation/views/welcome_view.dart';

void main() {
  runApp(const PolygotApp());
}

class PolygotApp extends StatelessWidget {
  const PolygotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'PolyGotApp',
      debugShowCheckedModeBanner: false,
      home: ExerciseView(),
    );
  }
}
