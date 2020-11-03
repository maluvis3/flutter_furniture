import 'package:flutter/material.dart';
import 'package:flutter_app/component/category_list.dart';
import 'package:flutter_app/component/product_card.dart';
import 'package:flutter_app/component/search_box.dart';
import 'package:flutter_app/constant.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/screens/details/detail_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(),
        Categorylist(),
        /*1*/ SizedBox(height: kDefaultPadding / 2),
        /*2*/ Expanded(
          child: Stack(
            children: [
              Container(
                //7 white background top size down
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              //3 product box design
              //10 extract product box named ProductCard
              //23 Wrapping ProductCard function in ListView
              ListView.builder(
                //26 itemCount: 3,
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  //27 write below and go to product_card.dart page
                  itemIndex: index,
                  product: products[index],
                  //33 press function activate and make details folder, detail_screen.dart in screens folder
                  press: () {
                    //35 connect page to detail_screen.dart and go to detail_screen.dart
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          /**68 insert contructor and go to detail_screen.dart*/
                          product: products[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              //ProductCard(),
            ],
          ),
        ),
      ],
    );
  }
}

//25 codes below move to product_card.dart file
// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key key,
//     this.itemIndex,
//     this.product,
//   }) : super(key: key);

//   //24 product contents make to variation
//   final int itemIndex;
//   final Product product; //make product contents in product.dart

//   @override
//   Widget build(BuildContext context) {
//     //14 total height and width of the screen
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(
//         horizontal: kDefaultPadding,
//         vertical: kDefaultPadding / 2,
//       ),
//       //6 delete outside box
//       //color: Colors.blueAccent,
//       height: 160,
//       //4 stack box design
//       child: Stack(
//         //5 inside box down
//         alignment: Alignment.bottomCenter,
//         children: [
//           Container(
//             height: 136,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(22),
//               color: kBlueColor,
//               //10 shadow effect of product box
//               //box shadow options are must be in []
//               boxShadow: [kDefaultShadow],
//             ),
//             //8 overlapping the product box to white box
//             child: Container(
//               //9 show right side tiny band
//               margin: EdgeInsets.only(right: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(22),
//               ),
//             ),
//           ),
//           //11 product image
//           Positioned(
//             //12 image move to right side
//             top: 0,
//             right: 0,
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               height: 160,
//               width: 200,
//               child: Image.asset("assets/images/Item_1.png"),
//             ),
//           ),
//           //13 product title and price text
//           Positioned(
//             //16 text move to left bottom
//             bottom: 0,
//             left: 0,
//             child: SizedBox(
//               height: 136,
//               width: size.width -
//                   200, //go to make variation 14 and minus 200 coz need to leave the image box
//               //15 product text
//               child: Column(
//                 //20 move price box to left bottom corner
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   //17 wrapping text to padding to fit position
//                   Spacer(), //22 text move to vertical center
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                     child: Text(
//                       'Classic Leather Arm Chair',
//                       style: Theme.of(context).textTheme.button,
//                     ),
//                   ),
//                   //18 price tag design
//                   Spacer(), //19 share available space
//                   Container(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: kDefaultPadding * 1.5, // padding 30
//                       vertical: kDefaultPadding / 4, //padding 5
//                     ),
//                     decoration: BoxDecoration(
//                       color: kSecondaryColor,
//                       //21 price button box border radius
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(22),
//                         topRight: Radius.circular(22),
//                       ),
//                     ),
//                     child: Text(
//                       "\$58",
//                       //https://www.didierboelens.com/2020/05/material-textstyle-texttheme/
//                       style: Theme.of(context).textTheme.button,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
