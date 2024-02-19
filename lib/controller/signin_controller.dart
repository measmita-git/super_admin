import 'package:get/get.dart';
import 'package:super_admin_mudita/bottom_nav_bar/expanded_bottom_nav_bar.dart';

class SignInController extends GetxController {
  RxBool isCheck = false.obs;
  final String staticPassword = 'admin123@';

  void signIn(String password) {
    if (password == staticPassword) {
      Get.offAll(ExpandedBottomNavBar());
    } else {
      Get.snackbar(
        'Error',
        'Incorrect password',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
