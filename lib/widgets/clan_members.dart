import 'package:camp_yellow/widgets/pink_text.dart';
import 'package:flutter/cupertino.dart';

class ClamMembers extends StatelessWidget {
  const ClamMembers({
    Key? key,
    required this.achivementsListSpacing,
  }) : super(key: key);

  final double achivementsListSpacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 60,
          child: Image.asset(
              'external-Avatar-avatars-others-inmotus-design-16.png'),
        ),
        SizedBox(width: achivementsListSpacing + 10),
        const PinkText(text: 'Lorem ipsum - Clan head'),
      ],
    );
  }
}
