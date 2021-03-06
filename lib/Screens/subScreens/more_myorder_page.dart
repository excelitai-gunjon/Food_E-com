import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/main_page.dart';
import 'package:foodecom/Screens/subScreens/checkout_page.dart';
import 'package:foodecom/model/inbox_list_model.dart';
import 'package:foodecom/model/notifications_list_model.dart';
import 'package:foodecom/styles/colors.dart';
import 'package:foodecom/styles/dimenssions.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  bool _state=true;
  checkState(){
    if(_state==true){
      return myOrder();
    }
    else{
      return CheckoutPage();
    }
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return checkState();
  }
  Widget myOrder(){
    final size=MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: mainColor,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainPage()), (Route<dynamic> route) => false);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: primaryFontColor, // add custom icons also
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My Order",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(FontAwesomeIcons.shoppingCart)),
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric( vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 250.w,
                          height: 250.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/burger.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                )
                              ]),
                        ),
                        SizedBox(
                          width: 25.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "King Burgers",
                              style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                color: primaryFontColor,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: mainColor,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text(
                                    "(124 rattings)",
                                    style: TextStyle(
                                        color: placeholderColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 2, bottom: 4),
                                  child: Text(
                                    "Burger",
                                    style: TextStyle(color: placeholderColor),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 2, bottom: 4),
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: mainColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 2, right: 15),
                                  child: Text(
                                    "Western Food",
                                    style: TextStyle(color: placeholderColor),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: mainColor,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text(
                                    "No 03,4th Lane, Newyork",
                                    style: TextStyle(
                                        color: placeholderColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    color: Colors.black12,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Beef Burger x1",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$16",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 3.h,
                            color: placeholderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Classic Burger x1",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$19",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 3.h,
                            color: placeholderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Cheese Chicken Burger x1",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$16",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 3.h,
                            color: placeholderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("French Fries Large",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$13",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 3.h,
                            color: placeholderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Chicken Legs Basket x1",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$14",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    //color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery Instructions",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("+ Add Notes",style: TextStyle(color: mainColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 3.h,
                            color: placeholderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sub Total",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$70",style: TextStyle(color: mainColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery Cost",style: TextStyle(color: primaryFontColor,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("\$5",style: TextStyle(color: mainColor,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 3.h,
                            color: placeholderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total",style: TextStyle(color: primaryFontColor,fontSize: 20,fontWeight: FontWeight.bold),),
                              Text("\$70",style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    //color: mainColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
//                  style: ElevatedButton.styleFrom(
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(50),
//                    ),
//                    padding: EdgeInsets.symmetric(horizontal: 10),
//                    minimumSize: Size(4, 5),
//                  ),
                            onPressed: () {
                              setState(() {
                                _state=false;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(
                                      "Checkout",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
