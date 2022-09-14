import 'package:daisy_app/controllers/auth_controller.dart';
import 'package:daisy_app/utils/apptheme.dart';
import 'package:daisy_app/utils/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseGender extends StatelessWidget {
  const ChooseGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<AuthController>(
      init: AuthController(),
      builder: (controller) {
        return Scaffold(
          body: ListView(
            children: [
              const Text(
                'Choose Gender',
                style: TextStyle(
                  color: AppTheme.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        2,
                        (index) => Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: InkWell(
                            onTap: () {
                              controller.getSelectedGender(index);
                            },
                            child: CircleAvatar(
                              backgroundColor:
                                  index == controller.selectedGender.value
                                      ? Colors.red
                                      : DummyData.genderColor[index],
                              radius: 60.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/female.png',
                        height: 180,
                      ),
                      Image.asset(
                        'assets/male.png',
                        height: 180,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
