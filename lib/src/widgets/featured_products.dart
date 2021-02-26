import 'package:flutter/material.dart';
import 'package:food_delivery/commons.dart';
import 'package:food_delivery/src/models/products.dart';
import 'package:food_delivery/src/widgets/title.dart';



List<Product> productsList = [
  Product(name: "Cereals", image: "1.jpg", rating: 4.2, vendor: "GoodFoods", wishList: true, price: 5.99),
  Product(name: "Taccos", image: "5.jpg", rating: 4.7, vendor: "GoodMeals", wishList: false, price: 12.99),
  Product(name: "Cereals", image: "1.jpg", rating: 4.2, vendor: "GoodFoo", wishList: true, price: 5.99),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 240,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productsList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: red[50],
                        offset: Offset(15, 5),
                        blurRadius: 30)
                  ]),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/${productsList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: CustomText(text: productsList[index].name),margin: EdgeInsets.only(left: 10),),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: grey[300],
                                      offset: Offset(1, 1),
                                      blurRadius: 4)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productsList[index].wishList ? Icon(
                                Icons.favorite,
                                size: 18,
                                color: red,
                              ) : Icon(
                                Icons.favorite_border,
                                size: 18,
                                color: red,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CustomText(
                                    text: productsList[index].rating.toString(),
                                    color: grey,
                                    size: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: grey,
                                  size: 16,
                                ),
                              ],
                            ),flex: 3,),
                          Expanded(child: Row(
                            children: [
                              CustomText(text: "\$${productsList[index].price}",weight: FontWeight.bold,)
                            ],
                          ),flex: 1,)
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
