import 'package:get/get.dart';

import 'package:app_radyalabs/app/modules/halaman_detail/bindings/halaman_detail_binding.dart';
import 'package:app_radyalabs/app/modules/halaman_detail/views/halaman_detail_view.dart';
import 'package:app_radyalabs/app/modules/list_food/bindings/list_food_binding.dart';
import 'package:app_radyalabs/app/modules/list_food/views/list_food_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LIST_FOOD,
      page: () => ListFoodView(),
      binding: ListFoodBinding(),
    ),
    GetPage(
      name: _Paths.HALAMAN_DETAIL,
      page: () => HalamanDetailView(),
      binding: HalamanDetailBinding(),
    ),
  ];
}
