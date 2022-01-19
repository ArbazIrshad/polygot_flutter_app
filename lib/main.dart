import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/authentication/presentation/views/language_selection_view.dart';
import 'features/authentication/presentation/views/welcome_view.dart';
import 'features/dashboard/presentation/views/dashboard_view.dart';
import 'features/dashboard/presentation/views/fav_word_review.dart';
import 'features/dashboard/presentation/views/main_page_view.dart';
import 'features/dashboard/presentation/views/practice_view.dart';
import 'features/dashboard/presentation/views/profile_view.dart';
import 'features/exercises/presentation/views/complete_sentece_exercise_view.dart';
import 'features/exercises/presentation/views/option_word_exercise_view.dart';
import 'features/exercises/presentation/views/select_errors_exercise_view.dart';
import 'features/exercises/presentation/views/translate_sentence_exercise_view.dart';
import 'features/exercises/presentation/views/word_definition_view.dart';
import 'features/exercises/presentation/views/word_guess_exercise_view.dart';
import 'features/exercises/presentation/views/wrong_word_selection_view.dart';
import 'features/settings/presentation/views/premium_view.dart';

import 'features/authentication/presentation/views/login_view.dart';
import 'features/dashboard/presentation/views/review_view.dart';
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
