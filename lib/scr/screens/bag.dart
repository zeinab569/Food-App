import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/scr/helpers/commens.dart';
import 'package:food_app/scr/models/products.dart';
import 'package:food_app/scr/models/products.dart';
import 'package:food_app/scr/models/products.dart';
import 'package:food_app/scr/widgets/title.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
 Product product= Product(name: "BunCake",image: "7.jpg",price: 12.00,rating: 4.9,vendor: "Good Food",wishList: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(text:"Shopping Bag",size: 20,weight: FontWeight.bold,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Stack(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top:6,left: 8,right: 8,bottom: 8),
                   child: Icon(Icons.shopping_basket,size: 25,color: Colors.red,),
                 ),
                 Positioned(
                   bottom: 5,
                   right: 5,
                   child: Container(
                       decoration: BoxDecoration(
                         color: white,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(
                             color: grey,
                             offset: Offset(2, 1),
                             blurRadius: 3
                         )],
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left:4,right: 4),
                         child: CustomText(text:"2",color: red,size:18,weight: FontWeight.bold,),
                       )
                   ),
                 ),
         ]
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3,7),
                    color: Colors.red[100],
                    blurRadius: 5,
                  )
                ]
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,5, 3, 5),
                    child: Image.asset("images/${product.image}",height: 120,width: 120,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(children: [
                        TextSpan(text: product.name+"\n",style: TextStyle(color: black,fontSize: 20,)),
                        TextSpan(text:"\$"+product.price.toString(),style: TextStyle(color: red,fontSize:16,fontWeight: FontWeight.w500))
                      ]),),
                      IconButton(icon: Icon(Icons.delete),),



                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
