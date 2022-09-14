import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  RxInt selectedGender = RxInt(-1);

  RxBool selectedStatus = RxBool(true);

  int? get activeIndex => selectedGender.value;

  void getSelectedGender(int gender) {
    selectedGender.value = gender;
    if (selectedGender.value == 1) {
      selectedStatus.value = false;
    } else {
      selectedStatus.value = true;
    }
  }
}
