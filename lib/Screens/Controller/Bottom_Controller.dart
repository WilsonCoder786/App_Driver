import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomController extends GetxController {
  var selectedIndex = 0.obs;

  var count = 0.obs;
  void changeIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
