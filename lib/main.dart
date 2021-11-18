// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:foodecom/Screens/main_page.dart';
import 'package:foodecom/src/pages/pages.dart';
import 'styles/colors.dart';
import 'package:foodecom/constants.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080,2160),
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: mainColorSwatch,
          primaryColor: Color(0xfffc6011),
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(16),
              minimumSize: Size(double.infinity, 50),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: BorderSide(
                color: mainColor
              ),
              minimumSize: Size(double.infinity, 50),
              padding: EdgeInsets.all(16)
            )
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleTextStyle: Theme.of(context).textTheme.bodyText2.copyWith(
              color: primaryFontColor,
              fontSize: 20
            ),
            actionsIconTheme: IconThemeData(color: primaryFontColor)
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.black12,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none
            ),
            floatingLabelStyle: TextStyle(
              color: secondaryFontColor,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 28
            )
          )
        ),
        routes: {
          kRouteRoot: (context) =>  SplashPage(),
          kRouteIntro: (context) => const IntroPage(),
          kRouteStarter: (context) => const StarterPage(),
          kRouteLogin: (context) => const LoginPage(),
          kRouteRegister: (context) => const RegisterPage(),

          //checkout
          //kRouteCheckout: (context) => const CheckoutPage(),
        },
        //home: MainPage(),
      ),
    );
  }
}
