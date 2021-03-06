import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodecom/Screens/main_page.dart';
import 'package:foodecom/model/inbox_list_model.dart';
import 'package:foodecom/model/notifications_list_model.dart';
import 'package:foodecom/styles/colors.dart';
import 'package:foodecom/styles/dimenssions.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            "Inbox",
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
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          _notificationsListView(),
        ],
      ),
    );
  }

  Widget _notificationsListView() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: kHorizontalPadding / 2,
        );
      },
      //padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: InboxListModel.list.length,
      itemBuilder: (context, index) {
        InboxListModel data = InboxListModel.list[index];
        return Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                print("OK>>>>>>>>>>>>>>>>>>>>");
//                setState(() {
//                  state=false;
//                });
              },
              child: Container(
                alignment: Alignment.center,
                //height: 70,
                width: MediaQuery.of(context).size.width,
                color: index % 2 == 0 ? Colors.black12 : Colors.white,
//                decoration: BoxDecoration(
//                  border: Border.all(color: placeholderColor),
//                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: ListTile(

                        onTap: (){

                        },
                        leading: Icon(FontAwesomeIcons.solidDotCircle,color: Colors.pink,size: 10,),
                        title: Text(data.heading!.toString(),),
                        subtitle: Text(data.notice!.toString(),maxLines:2,style: TextStyle(),),
                        //trailing: Icon(FontAwesomeIcons.solidDotCircle,color: Colors.pink,size: 10,),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(data.time!.toString(),style: TextStyle(fontSize: 8),),

                          Icon(Icons.star_border,color: mainColor,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Image.asset(data.imagePath!.toString(),fit: BoxFit.fill),
//                  Container(
//                    width: MediaQuery.of(context).size.width,
//                    height: 700.h,
//                    decoration: BoxDecoration(
//                        image: DecorationImage(
//                            image: AssetImage(data.imagePath!.toString()),
//                            fit: BoxFit.cover),
//                        borderRadius: BorderRadius.circular(12),
//                        boxShadow: [
//                          BoxShadow(
//                            blurRadius: 5,
//                          )
//                        ]),
//                  ),
          ],
        );
      },
    );
  }
}
