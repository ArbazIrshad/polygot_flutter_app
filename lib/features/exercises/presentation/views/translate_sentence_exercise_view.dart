import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

class TranslateSentenceExerciseView extends StatelessWidget {
  const TranslateSentenceExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF457F92),
              Color(0xFFEF5D80).withOpacity(0.8),
              // Color(0xFFF0B7D4).withOpacity(0.0),
              Color(0xFF172155),
              Color(0xFF282F54),
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                'Translate this sentence',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                'The women has cats',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 26.0,
              ),
              Icon(
                Icons.volume_up_outlined,
                size: 32,
                color: Colors.white30,
              ),
              const SizedBox(
                height: 26.0,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WordTileWidget(text: 'la'),
                  WordTileWidget(text: 'femme'),
                  WordTileWidget(text: 'a'),
                ],
              ),
              Divider(
                color: Colors.white24,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WordTileWidget(text: 'chats'),
                  WordTileWidget(text: 'des'),
                  WordTileWidget(text: 'chevals'),
                  WordTileWidget(text: 'chiens'),
                ],
              ),
              const SizedBox(
                height: 26.0,
              ),
              Text(
                '15 words left',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10.0,
              ),
              RoundedButtonWidget(
                buttonText: 'Validate',
                onpressed: () {},
                width: 348,
                colors: [
                  Color.fromRGBO(70, 242, 255, 1.0),
                  Color.fromRGBO(244, 87, 202, 1.0),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: LinearPercentIndicator(
                  percent: 0.7,
                  width: 274,
                  lineHeight: 14.0,
                  progressColor: Color(0xFF92C9FB),
                  backgroundColor: Color(0xFFC4C4C4).withOpacity(0.32),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 86.0,
                height: 28.0,
                // padding: const EdgeInsets.all(0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                    ),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  'Basics 2.1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WordTileWidget extends StatelessWidget {
  final String text;
  const WordTileWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      alignment: Alignment.center,
      height: 44.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.white38),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              Color(0xFFC4C4C4).withOpacity(0.02)
            ],
          )),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
      ),
    );
  }
}
