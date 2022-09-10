// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:camp_yellow/widgets/pink_text.dart';
import 'package:camp_yellow/widgets/white_text.dart';

class ClanDiss extends StatelessWidget {
  final String topString;
  final String bottomString;

  const ClanDiss({
    Key? key,
    required this.topString,
    required this.bottomString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PinkText(text: topString),
        WhiteText(title: bottomString),
      ],
    );
  }
}
