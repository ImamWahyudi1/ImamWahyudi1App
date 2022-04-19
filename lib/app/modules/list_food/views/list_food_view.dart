import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_food_controller.dart';
import '../../../data/models/list_food_model.dart';
import '../widgets/list_food_widget.dart';

class ListFoodView extends GetView<ListFoodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Foods'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ListFood>>(
        future: controller.getAllListFood(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snap.data?.length == 0) {
            print(snap.data);
            return Center(
              child: Text("silahkan cek koneksi internet anda"),
            );
          } else {
            return ListView(
              padding: EdgeInsets.all(10),
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: snap.data!.length,
                  itemBuilder: (context, index) {
                    ListFood listFood = snap.data![index];
                    return List_Food_Widget(listFood: listFood);
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
