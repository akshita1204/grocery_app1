import 'package:flutter/material.dart';
class HomePagePosts extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      width:double.infinity,
      padding:EdgeInsets.all(15),
        margin:EdgeInsets.all(20),
      decoration: BoxDecoration(
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            color:Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ]
      ),

      child:Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child:Text('Flash Sale',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
           SizedBox(height:15),
            GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: [
              for(int i=1;i<9;i++)
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Color(0xFFE8E6E6),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                    color:Colors.grey.withOpacity(0.3),
                     spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]
                  ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,"itemPage");
                      },
                      child:Image.asset("assets/images/$i.png",
                      fit: BoxFit.contain,
                      height:130,
                      width:120,
                      )
                    ),
                    SizedBox(height:15),
                    Container(
                      alignment:Alignment.centerLeft,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Item Name",style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                          SizedBox(
                            height:6),
                            Row(children: [
                              Text("\$50",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:Color(0xFFFFB608),
                              ),),
                              SizedBox(height:4),
                              Text("/1Kg",style:TextStyle(
                                fontSize:16,
                              )),
                              Spacer(),
                              Icon(Icons.favorite_border,
                                color:Color(0xFFFFB608),
                                  size:20,
                              ),
                            ],)
                        ],
                      )
                    )
                  ],
                )
                ),

            ],
          )
        ],
      )

    );
  }
}
