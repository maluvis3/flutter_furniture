import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';
import 'color_dots.dart';
import 'list_of_colors.dart';
import 'product_image.dart';

//38 make Body class and go back to detail_screen.dart
class Body extends StatelessWidget {
  /**66 make product variable and create contructor. go detail_screen.dart */
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //** 42 make size variable
    Size size = MediaQuery.of(context).size;
    //** 40 Change container widget to column, background UI
    return SingleChildScrollView(
      child: Column(
        children: [
          //** 47 extract container to ProductPoster widget, before extracting code is in detail_body_1.dart
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            //** 42 delete height 200
            //height: 200,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            //** 41 image on the background
            child: Column(
              /**63 text align left */
              crossAxisAlignment: CrossAxisAlignment
                  .start, //align left width image section. next line 38
              children: [
                /**64 wrap ProductPoster in center. next line 51*/
                //** 48 extract container to ProductPoster and move code to product_image.dart
                Center(
                  child: ProductPoster(
                    size: size,
                    /**73 change text to variable */
                    image: product.image,
                    //image: 'assets/images/Item_2.png',
                  ),
                ),
                /** 51 make dots */
                /** 52 wrap row with padding widget and go to line 56 to make dot inside circle line */
                /**61 extract padding widget to ListOfColors and copy ListOfColors, paste list_of_colors.dart. this code is copied in detail_body_5.dart */
                ListOfColors(),
                /**65 wrap text width padding. next line 59 */
                /**62 text section design. next line 34 */
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    /**72 change text to variable */
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  /**71 change text to variable */
                  '\$${product.price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    /**70 change text to variable */
                    product.description,
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                SizedBox(
                    height:
                        kDefaultPadding), // go to line 9 to make product variable
              ],
            ),
          ),
          /**73 button on display bottom */
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: Color(0xfffcbf1e),
              borderRadius: BorderRadius.circular(30),
            ), //after coding this line, go up line 22 and wrap column width singlechildscrollview to flow over size element
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: 18,
                ),
                SizedBox(width: kDefaultPadding / 2),
                Text(
                  'Chat',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                FlatButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/shopping-bag.svg',
                    height: 18,
                  ),
                  label: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
