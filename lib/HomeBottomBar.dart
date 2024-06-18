import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeBottomBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
  return Container(
    height:80,
    padding:EdgeInsets.symmetric(vertical: 12,horizontal: 25),
    decoration: BoxDecoration(
      color:Colors.white,
    ),

    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
                Icon(
                  Icons.home,
                  color:Color(0xFFF7CA0F),
                  size:32,
                ),
                Text("Home",
                    style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                    ))
              ],
            ),

        Column(
          children: [
            Icon(
              Icons.search,
              color:Color(0xFFF7CA0F),
              size:32,
            ),
            Text("Explore",
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ))
          ],
        ),


       InkWell(
         onTap: (){
           Navigator.pushNamed(context, "cartPage");
         },
       child: Column(
          children: [
            Icon(
              CupertinoIcons.cart,
              color:Color(0xFFF7CA0F),
              size:32,
            ),
            Text("My Cart",
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ))
          ],
        ),
       ),

        Column(
          children: [
            Icon(
              Icons.person,
              color:Color(0xFFF7CA0F),
              size:32,
            ),
            Text("Account",
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ))
          ],
        ),
          ],
        )

  );
  }



}
