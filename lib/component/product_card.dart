import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';

import '../constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  //24 product contents make to variation
  final int itemIndex;
  final Product product; //make product contents in product.dart
  //31 product click and change page function
  final Function press;

  @override
  Widget build(BuildContext context) {
    //14 total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      //6 delete outside box
      //color: Colors.blueAccent,
      height: 160,
      //4 stack box design
      //32 wrapping Stack width inkwell and go to body.dart page's ProductCard widget
      child: InkWell(
        onTap: press,
        child: Stack(
          //5 inside box down
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                //10 shadow effect of product box
                //box shadow options are must be in []
                boxShadow: [kDefaultShadow],
              ),
              //8 overlapping the product box to white box
              child: Container(
                //9 show right side tiny band
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            //11 product image
            Positioned(
              //12 image move to right side
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(
                  //28 "assets/images/Item_1.png", change to variable
                  product.image,
                ),
              ),
            ),
            //13 product title and price text
            Positioned(
              //16 text move to left bottom
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width -
                    200, //go to make variation 14 and minus 200 coz need to leave the image box
                //15 product text
                child: Column(
                  //20 move price box to left bottom corner
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //17 wrapping text to padding to fit position
                    Spacer(), //22 text move to vertical center
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        //29 'Classic Leather Arm Chair', change to variable
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    //18 price tag design
                    Spacer(), //19 share available space
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5, // padding 30
                        vertical: kDefaultPadding / 4, //padding 5
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        //21 price button box border radius
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        //30 "\$58", change to variable
                        '\$${product.price}',
                        //https://www.didierboelens.com/2020/05/material-textstyle-texttheme/
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
