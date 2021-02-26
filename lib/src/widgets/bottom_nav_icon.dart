import 'package:flutter/material.dart';
import 'package:food_delivery/src/widgets/title.dart';
class BottomIcon extends StatelessWidget {

  final String image;
  final String text;


  BottomIcon({@required this.image,@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            "assets/images/$image.png",
            width: 20,
            height: 20,
          ),
          SizedBox(height: 5,),
          CustomText(text: text)
        ],
      ),
    );
  }
}
