import 'package:flutter/material.dart';
import '../constants/constant.dart';

class TabbarItems extends StatelessWidget {
  final String text;
  final Function ontap;

  const TabbarItems({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
        child: Text(
          text,
          style: middleTabbarText,
        ),
      ),
    );
  }
}
