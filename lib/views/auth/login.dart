import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/apptheme.dart';
import 'choose_gender.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        primary: false,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/login.png',
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 100),
                    child: Stack(
                      children: const [
                        Text(
                          'Welcome To',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80, top: 5),
                          child: Text(
                            'Daisy',
                            style: TextStyle(
                                color: AppTheme.yellowColor, fontSize: 50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 2,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    width: Get.width / 3,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    width: Get.width / 3,
                    child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 50,
                      width: Get.width / 1.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.darkBlue,
                      ),
                      child: const Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: Get.width / 1.25,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => const ChooseGender());
                              },
                              child: const Text(
                                'Or Create Account',
                                style: TextStyle(color: AppTheme.darkBlue),
                              ),
                            ),
                            const Text(
                              'Forgot Password',
                              style: TextStyle(color: AppTheme.darkBlue),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
