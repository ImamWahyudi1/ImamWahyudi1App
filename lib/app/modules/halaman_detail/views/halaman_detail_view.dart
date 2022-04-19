import 'package:app_radyalabs/app/data/models/list_food_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/halaman_detail_controller.dart';

class HalamanDetailView extends GetView<HalamanDetailController> {
  @override
  Widget build(BuildContext context) {
    final foodDetail = Get.arguments as ListFood;

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Detail'),
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            children: [
              Container(
                height: Get.height * 0.25,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(foodDetail.image!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                foodDetail.name!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                height: Get.height,
                width: Get.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How To",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      foodDetail.desc!,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
