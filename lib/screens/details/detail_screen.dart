import 'package:flutter/material.dart';
import 'package:flutter_app/constant.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/screens/details/detail_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

//34 detailsscreen class and go back to body.dart
class DetailsScreen extends StatelessWidget {
  /**67 make product variable and create contructor. go to body.dart*/
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //36 change widget to Scaffold
    return Scaffold(
      backgroundColor: kPrimaryColor,
      //37 extract appbar to method buildAppBar and make detail_body.dart file
      appBar: buildAppBar(context),
      //39 make Body widget and connect. go to detail_body.dart
      body: Body(
        /**69 insert constructor and go to detail_body.dart */
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
