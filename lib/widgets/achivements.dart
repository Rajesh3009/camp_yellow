import 'package:flutter/material.dart';

class AchivementsList extends StatelessWidget {
  const AchivementsList(
      {Key? key, required this.leading, required this.trailing})
      : super(key: key);
  final Widget leading;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: leading,
          ),
          trailing,
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
