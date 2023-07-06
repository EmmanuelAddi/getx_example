import 'package:get/get.dart';

import '../controllers/tap_controller.dart';
import '../controllers/list_controller.dart';

Future<void> init() async {
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}