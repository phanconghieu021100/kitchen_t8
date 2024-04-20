import 'package:flutter/material.dart';
import 'package:kitchenwise/data/inventory_data.dart';
import 'package:kitchenwise/u.dart';

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'You have',
          style: AppFonts.quicksand(size: 20),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: inventoryData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(inventoryData[index].name,style: AppFonts.quicksand(size: 15,weight: FontWeight.w600),),
                  trailing: Text(
                      '${inventoryData[index].quantity} ${inventoryData[index].unit}',style: AppFonts.quicksand(size: 16,weight: FontWeight.w600),),
                );
              }),
        ),
        Text(
          'You need',
          style: AppFonts.quicksand(size: 20),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: inventoryData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(inventoryData[index].name,style: AppFonts.quicksand(size: 16,weight: FontWeight.w600),),
                  trailing: Text(
                      '${inventoryData[index].quantity} ${inventoryData[index].unit}',style: AppFonts.quicksand(size: 16,weight: FontWeight.w600),),
                );
              }),
        ),
      ],
    );
  }
}
