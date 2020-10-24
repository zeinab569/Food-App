import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/scr/helpers/commens.dart';
import 'package:food_app/scr/helpers/screen_navegation.dart';
import 'package:food_app/scr/screens/bag.dart';
import 'package:food_app/scr/widgets/bottom_navigation_icons.dart';
import 'package:food_app/scr/widgets/categories.dart';
import 'package:food_app/scr/widgets/featured_products.dart';
import 'package:food_app/scr/widgets/smallbutton.dart';
import 'package:food_app/scr/widgets/title.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                      text:"What would like to eat ?",
                      size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none,),
                      onPressed: (){},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration:BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(1,1),
                      blurRadius: 4
                    )]
                ),
                child: ListTile(
                  leading: Icon(Icons.search,color: red,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and restaurant ",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list,color: red,),
                ),
              ),
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.only(left: 4,right: 4,bottom: 8),
              child: CustomText(text: "Featured",size: 20,color: grey,),
            ),
            Featured(),

            Padding(
              padding: const EdgeInsets.all(8),
              child: CustomText(text: "Popular",size: 20,color: grey,),
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/burger.jpg",),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SmallButton(Icons.favorite),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.star,color: Colors.yellow[900],size: 20,),
                              ),
                              Text("4")
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.7),
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.1),
                              Colors.black.withOpacity(.5),
                              Colors.black.withOpacity(.25),
                            ]
                          ),
                        ),
                      ),
                    ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text: TextSpan(children: [
                            TextSpan(text: "Burger \n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: white)),
                            TextSpan(text: "by: \n",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: white)),
                            TextSpan(text: "Burger Hut \n",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: white)),
                          ],
                            style: TextStyle(color: black),
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text: TextSpan(children: [
                            TextSpan(text: "\$ 19.99 \n",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: white)),
                          ],
                            style: TextStyle(color: black),
                          ),),
                        )
                      ],
                    ),
                  )
                ),
              ],
            )



          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomNavIcons(icon: Icons.home,name: "Home",onTap: (){
              changeScreen(context, Home());
              },),
            BottomNavIcons(icon:Icons.person_pin,name:"Near By",onTap: (){},),
            BottomNavIcons(icon:Icons.shopping_basket,name:"Cart",
              onTap: (){
              changeScreen(context, ShoppingBag());

            },),
            BottomNavIcons(icon:Icons.person,name:"Account",onTap: (){},),



          ],
        ),
      ),
    );
  }
}
