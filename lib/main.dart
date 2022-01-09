import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/authentication/presentation/views/language_selection_view.dart';
import 'package:polygot_app/features/authentication/presentation/views/login_view.dart';
import 'package:polygot_app/features/authentication/presentation/views/signup_view.dart';
import 'package:polygot_app/features/authentication/presentation/views/study_mode_selection_view.dart';
import 'package:polygot_app/features/daily_review/presentation/views/daily_review_dialog.dart';
import 'package:polygot_app/features/daily_review/presentation/views/daily_review_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/dashboard_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/fav_word_review.dart';
import 'package:polygot_app/features/dashboard/presentation/views/practice_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/profile_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/review_view.dart';
import 'package:polygot_app/features/dashboard/presentation/views/section_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/audio_word_exercise_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/exercise_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/option_word_exercise_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/translate_sentence_exercise_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/word_guess_exercise_view.dart';
import 'package:polygot_app/features/exercises/presentation/views/wrong_word_selection_view.dart';
import 'package:polygot_app/features/settings/presentation/views/settings_view.dart';

import 'features/authentication/presentation/views/welcome_view.dart';
import 'features/exercises/presentation/views/word_definition_view.dart';

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
      home: WrongWordSelection(),
    );
  }
}
