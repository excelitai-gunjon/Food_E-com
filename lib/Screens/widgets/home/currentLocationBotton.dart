import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../styles/colors.dart';
class currentLocationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return TextButton(
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Delivering to",
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: secondaryFontColor),
            ),
            SizedBox(height: size.height*.01,),
            Row(
              children: [
                Text(
                  "Current Location",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: primaryFontColor),
                ),
                SizedBox(
                  width: size.width *.08,
                ),
                Icon(
                  FontAwesomeIcons.chevronDown,
                  //color: mainColor,
                )
              ],
            ),
          ],
        )
    );
  }
}
