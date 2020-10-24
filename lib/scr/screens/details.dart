//import 'dart:html';

//import 'dart:html';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/scr/models/products.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:food_app/scr/widgets/featured_products.dart';
import 'package:food_app/scr/widgets/title.dart';
import '../helpers/commens.dart';

class Details extends StatefulWidget {
  final Product product;
  Details({ @required this.product});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                //width: MediaQuery.of(context).size.width,
                height: 300,
                child: Stack(
                  children: [
                    Carousel(
                      images: [
                        Image.asset("images/${widget.product.image}",),
                        Image.asset("images/${widget.product.image}"),
                        Image.asset("images/${widget.product.image}"),
                        //Image.asset("images/${productList[index].image}"),
                      ],
                      dotBgColor: white,
                      dotColor: grey,
                      dotIncreasedColor: red,
                      dotIncreaseSize: 1.2,
                      autoplay: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon:Icon(Icons.arrow_back_ios,color: black,),onPressed: (){
                          Navigator.pop(context);
                        },),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.shopping_basket,size: 35,),
                            ),
                            Positioned(
                              bottom: 2,
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
                                    child: CustomText(text:"21",color: red,size:20,weight: FontWeight.bold,),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      right: 20,
                      bottom: 55,
                      child: Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(1,2),
                            blurRadius: 3,
                          )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Icon(
                            Icons.favorite,
                            color: red,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomText(text:widget.product.name,size: 24,weight: FontWeight.bold,),
              CustomText(text:"\$"+widget.product.price.toString(),size: 20,weight: FontWeight.w600,color: red,),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon: Icon(Icons.remove,size: 36,),onPressed: (){},),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: red,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: CustomText(text:"Add To Bag",color: white,size: 22,weight: FontWeight.w600,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon: Icon(Icons.add,size: 36,color: red,),onPressed: (){},),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
