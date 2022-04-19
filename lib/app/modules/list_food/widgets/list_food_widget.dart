import 'package:app_radyalabs/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/list_food_controller.dart';
import '../../../data/models/list_food_model.dart';
import '../widgets/list_food_widget.dart';

class List_Food_Widget extends StatelessWidget {
  const List_Food_Widget({
    Key? key,
    required this.listFood,
  }) : super(key: key);

  final ListFood listFood;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(
                Routes.HALAMAN_DETAIL,
                arguments: listFood,
              ),
              child: Container(
                // margin: EdgeInsets.only(right: 10),
                height: Get.height * 0.28,
                width: Get.width * 0.46,
                color: Colors.grey[300],
                child: Image.network(
                  listFood.image!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, obj, stckTrace) => Center(
                    child: Text(
                      "Gambarnya Error",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(
                Routes.HALAMAN_DETAIL,
                arguments: listFood,
              ),
              child: Container(
                // margin: EdgeInsets.only(right: 10),
                height: Get.height * 0.1,
                width: Get.width * 0.46,
                color: Colors.black.withAlpha(130),
                child: Center(
                  child: Text(
                    "${listFood.name}",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
