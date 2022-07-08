import 'package:flutter/material.dart';
import 'package:todo_list/Theme/colors.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  const CustomBtn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: btnBackgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: textWhiteColor,
          ),
        ),
      ),
    );
  }
}
