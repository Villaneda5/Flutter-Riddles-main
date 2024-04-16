import 'package:DINEROIQ/models/layout_questions_model.dart';
import 'package:DINEROIQ/models/naviagation_questions_model.dart';
import 'package:DINEROIQ/models/widget_questions_model.dart';
import 'package:DINEROIQ/models/state_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color.fromARGB(255, 19, 194, 224);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.square_stack_3d_up,
    topicName: "EDUCACIÓN FINANCIERA",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.arrow_2_circlepath,
    topicName: "INVERSIONES",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.paperplane,
    topicName: "PLANIFICACIÓN DEL FUTURO",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
    topicName: "FUNDAMENTOS FINANCIEROS",
    topicQuestions: layOutQuestionsList,
  ),
];
