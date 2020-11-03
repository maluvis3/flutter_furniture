import 'package:flutter/material.dart';

import '../../constant.dart';
import 'color_dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        /**55 fits dots center and go to line 63 */
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /**54 extract container to ColorDot. copied detail_body_3.dart */
          ColorDot(
            /**59 set dots initial style */
            fillColor: Color(0xff80989a),
            isSelected: true,
          ),
          /**60 copy dot 2 more and copy ColorDot widget, paste color_dots.dart file. this code is copied detail_body_4.dart*/
          ColorDot(
            /**59 set dots initial style */
            fillColor: Color(0xffff5200),
          ),
          ColorDot(
            /**59 set dots initial style */
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
