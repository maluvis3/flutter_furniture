import 'package:flutter/material.dart';

import '../../constant.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  /**56 make color and selected variables and set false value of isSelected go to line 81*/
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
      ),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          /**57 initial value set. next line 89*/
          color: isSelected ? Color(0xff707070) : Colors.transparent,
        ),
      ),
      /**53 make dot inside circle line */
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          /**58 change color to variable and next line 47 */
          color: fillColor,
          //color: Color(0xff80989a),
        ),
      ),
    );
  }
}
