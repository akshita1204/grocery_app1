import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'CartPage.dart';
import 'HomePage.dart';
import 'ItemPage.dart';
import 'OrderPage.dart';

void main()
{runApp(MyApp());
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() =>  _MyAppState();
}
class _MyAppState extends State<MyApp>
{
  @override
  void initState()
  {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }



  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
      ),
      debugShowCheckedModeBanner: false,
      routes:{
        "/":(context)=>HomePage(),
        "itemPage":(context)=>ItemPage(),
        "cartPage":(context)=>CartPage(),
        "orderPage":(context)=>OrderPage(),
      },
    );
  }
}



