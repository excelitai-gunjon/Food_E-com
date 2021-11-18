import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/widgets/home/headingRestaurants.dart';
import 'package:foodecom/Screens/widgets/home/Resturant_or_item_Category_list.dart';
import '../widgets/home/currentLocationBotton.dart';
import '../widgets/home/searchFoodTextField.dart';
import 'package:foodecom/styles/dimenssions.dart';
import '../../styles/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Good morning Akila!"),
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(FontAwesomeIcons.shoppingCart),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * .78,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
            child: currentLocationButton(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: searchFoodTextField(),
          ),
          SizedBox(
            height: kVerticalPadding,
          ),
          HomeCategoryList(),
//        SizedBox(
//          height: kVerticalPadding,
//        ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Popular Restaurants',
            ),
          ),
          PopulerRestaurantsCategoryList(),
          SizedBox(
            height: kVerticalPadding,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Most Popular',
            ),
          ),
          MostPopularList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: HeadingRestaurants(
              heading: 'Recent Items',
            ),
          ),
          RecentItems()
        ]),
      ),
    );
  }
}
