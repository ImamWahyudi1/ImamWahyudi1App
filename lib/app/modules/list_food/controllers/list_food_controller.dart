import 'package:app_radyalabs/app/data/models/list_food_model.dart';
import 'package:get/get.dart';
import '../../../data/providers/list_food_provider.dart';
import '../../../data/models/list_food_model.dart';

class ListFoodController extends GetxController {
  ListFoodProvider listFoodProv = ListFoodProvider();

  Future<ListFood?> getSingleListFood(int id) async {
    return await listFoodProv.getListFood(id);
  }

  Future<List<ListFood>> getAllListFood() async {
    return await listFoodProv.getAllListFood();
  }
}
