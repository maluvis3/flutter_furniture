import 'package:flutter/material.dart';
import 'package:flutter_app/constant.dart';

class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  /*8*/ int selectedIndex = 0;
  List category = ['All', 'Sofa', 'Part Bench', 'Armchair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        //10 Wrapping Containers to widget
        itemBuilder: (context, index) => GestureDetector(
          /*11*/ onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            /*4*/ alignment: Alignment.center,
            // /*1*/ margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            /*6*/ margin: EdgeInsets.only(
              left: kDefaultPadding,
              /*12 : go to body.dart*/ right:
                  index == category.length - 1 ? kDefaultPadding : 0,
            ),
            /*2*/ padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            /*3*/ decoration: BoxDecoration(
              color: /*9*/ index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              /*5*/ borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              category[index],
              /*7*/ style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
