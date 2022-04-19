import 'package:get/get.dart';

import '../controllers/halaman_detail_controller.dart';

class HalamanDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HalamanDetailController>(
      () => HalamanDetailController(),
    );
  }
}
