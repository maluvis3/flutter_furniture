import 'package:flutter/material.dart';

import '../../constant.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  //** 49 add image variable */
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      //the height of this container is 80% of the mobile width. go up to build widget and make size variable
      height: size.width * 0.8,
      //color: Colors.black,
      //after write color black, display shows the yellow black alert band. Then go up to line 18 and delete height 200.
      //**43 image box size
      child: Stack(
        //** 46 add the alignment to fit image to circle
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              //** 44 delete the black color in line 34 and add the double.infinity in line 15
            ),
          ),
          //** 45 add image on the circle
          Image.asset(
            //**50 change url to url variable */
            image, //display shows error messages, then move ProductPoster widget code to product_image.dart and add image url in ProductPoster widget in detail_body.dart
            //'assets/images/Item_2.png',
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
            //image position is not fit to circile. so add the alignment in line 39
          ),
        ],
      ),
    );
  }
}
