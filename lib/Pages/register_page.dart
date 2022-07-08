import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/Pages/login_page.dart';
import 'package:todo_list/Theme/colors.dart';
import 'package:todo_list/components/custom_btn.dart';
import 'package:todo_list/components/custom_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Welcome Onboard !',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Let’s help you meet up your tasks',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: textColorBlack,
                    ),
                  ),
                  const SizedBox(height: 64),
                  Form(
                    child: Column(
                      children: const [
                        CustomInput(placeholder: 'Enter your full name'),
                        SizedBox(height: 21),
                        CustomInput(placeholder: 'Enter email'),
                        SizedBox(height: 21),
                        CustomInput(placeholder: 'Enter password'),
                        SizedBox(height: 21),
                        CustomInput(placeholder: 'confirm password'),
                        SizedBox(height: 21),
                      ],
                    ),
                  ),
                  const SizedBox(height: 41),
                  const CustomBtn(text: 'Register'),
                  const SizedBox(height: 20),
                  Center(
                    child: GestureDetector(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account ?',
                          style: TextStyle(color: textColorBlack),
                          children: const [
                            TextSpan(
                              text: ' sign in',
                              style: TextStyle(color: textGreenColor),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                    ),
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
