import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list/Pages/register_page.dart';
import 'package:todo_list/Theme/colors.dart';
import 'package:todo_list/components/custom_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/top1.svg'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43.0),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  SvgPicture.asset('assets/images/img1.svg'),
                  const SizedBox(height: 37),
                  Text(
                    'Get things done with TODo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: textColorBlack,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames lectus fermentum ultrices ipsum ornare id lorem vestibulum, congue. Quis nulla vel consectetur ultrices. Nulla est faucibus mollis faucibus sed libero amet. Facilisis ut arcu facilisis egestas iaculis nec sit. Donec adipiscing ac massa egestas.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: textColorBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 52),
                  GestureDetector(
                    child: const CustomBtn(text: 'Get Started'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
