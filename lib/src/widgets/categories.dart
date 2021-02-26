import 'package:flutter/material.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/src/models/category.dart';
import 'package:food_delivery/src/widgets/title.dart';


List<FoodCategory> categoriesList = [
    FoodCategory(name: "Salad",image: "salad.png"),
    FoodCategory(name: "Steak",image: "steak.png"),
    FoodCategory(name: "Fast Food",image: "sandwich.png"),
    FoodCategory(name: "Deserts",image: "ice-cream.png"),
    FoodCategory(name: "Beer",image: "pint.png"),
    FoodCategory(name: "Sea food",image: "fish.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                          color: red[50],
                          offset: Offset(4, 6),
                          blurRadius: 20)
                    ]),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset(
                        "assets/images/${categoriesList[index].image}",
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    text: categoriesList[index].name,
                    size: 14,
                    color: black,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
