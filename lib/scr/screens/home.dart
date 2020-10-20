import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/scr/commens.dart';
import 'package:food_app/scr/widgets/categories.dart';
import 'package:food_app/scr/widgets/featured_products.dart';
import 'package:food_app/scr/widgets/title.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
              padding: const EdgeInsets.all(4.0),
              child: CustomText(text: "Featured",size: 20,color: grey,),
            ),
            Featured(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Popular",size: 20,color: grey,),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/burger.jpg",),

              ),
            )



          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.home,size: 30,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person_pin,size: 30,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_basket,size: 30,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.backup,size: 30,),
            ),


          ],
        ),
      ),
    );
  }
}
