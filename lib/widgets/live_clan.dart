// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:camp_yellow/widgets/white_text.dart';
import 'package:flutter/material.dart';

class LiveClan extends StatelessWidget {
  final String title;
  const LiveClan({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            child: SizedBox(
              height: 200,
              child: Image.asset('assets/dark_gaming.jpg'),
            ),
          ),
          Positioned(
            top: 25,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.8,
              child: WhiteText(title: title),
            ),
          ),
        ],
      ),
    );
  }
}
