import 'package:flutter/material.dart';
import 'package:food_app/scr/helpers/screen_navegation.dart';
import 'package:food_app/scr/models/products.dart';
import 'package:food_app/scr/screens/details.dart';
import 'package:food_app/scr/widgets/title.dart';
import '../helpers/commens.dart';

List<Product> productList =[
  Product(name: "Pasta",image: "1.jpg",price: 6.00,rating: 4.2,vendor: "Good Food",wishList: true),
  Product(name: "Gereals",image: "2.jpg",price: 7.00,rating: 5,vendor: "Good Food",wishList: false),
  Product(name: "Burger",image: "3.jpg",price: 4.00,rating: 3,vendor: "Good Food",wishList: true),
  Product(name: "pane",image: "4.jpg",price: 9.00,rating: 5,vendor: "Good Food",wishList: true),
  Product(name: "Rice",image: "5.jpg",price: 20.00,rating: 4.9,vendor: "Good Food",wishList: true),
  Product(name: "Fish",image: "6.jpg",price: 13.00,rating: 3.9,vendor: "Good Food",wishList: true),
  Product(name: "BunCake",image: "7.jpg",price: 12.00,rating: 4.9,vendor: "Good Food",wishList: true),
  Product(name: "Salad",image: "9.jpg",price: 9.00,rating: 4,vendor: "Good Food",wishList: false),
  Product(name: "checken",image: "10.jpg",price: 18.00,rating: 3.9,vendor: "Good Food",wishList: true),
  Product(name: "Burger",image: "11.jpg",price: 9.00,rating: 4.9,vendor: "Good Food",wishList: false),
  Product(name: "Meat",image: "12.jpg",price: 15.00,rating: 5,vendor: "Good Food",wishList: true),


];


class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 220,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (_,index){
              return GestureDetector(
                onTap: (){
                  changeScreen(_,Details(product: productList[index],));
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(-2,-3),
                            blurRadius: 5
                        )]
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/${productList[index].image}",height: 120,width: 195,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12,14,16,12),
                            child: CustomText(text:"${productList[index].name}",),
                          ),
                          SizedBox(height: 4,),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300],
                                        offset: Offset(1,1),
                                        blurRadius: 4
                                    )]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: productList[index].wishList ? Icon(Icons.favorite,color: red,size: 18,)
                                    :Icon(Icons.favorite_border,color: red,size: 18,),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: CustomText(text: "${productList[index].rating.toString()}",color: grey,size: 15,),
                              ),
                              SizedBox(width: 2,),
                              Icon(Icons.star,color: red,size: 16,),
                              Icon(Icons.star,color: red,size: 16,),
                              Icon(Icons.star,color: red,size: 16,),
                              Icon(Icons.star,color: grey,size: 16,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: CustomText(text: "\$${productList[index].price.toString()}",weight: FontWeight.bold,),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              );
            }
            ),
      ),
    );
  }
}
