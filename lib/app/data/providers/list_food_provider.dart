import 'package:get/get.dart';

import '../models/list_food_model.dart';

class ListFoodProvider extends GetConnect {
  Future<ListFood?> getListFood(int id) async {
    final response = await get('http://18.221.132.15:7000/foods/$id');
    return ListFood.fromJson(response.body);
  }

  Future<List<ListFood>> getAllListFood() async {
    final response = await get('http://18.221.132.15:7000/foods/');
    return ListFood.fromJsonList(response.body);
  }
}
