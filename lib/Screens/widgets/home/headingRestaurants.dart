import 'package:flutter/material.dart';
import 'package:foodecom/styles/colors.dart';

class HeadingRestaurants extends StatelessWidget {
  String? heading;
  HeadingRestaurants({
    required this.heading,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          heading.toString(),
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: primaryFontColor),
        ),
        TextButton(
          onPressed: () {

          },
          child: Text(
            "View all",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: mainColor),
          ),
        ),
      ],
    );
  }
}
