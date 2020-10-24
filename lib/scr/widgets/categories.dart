import 'package:flutter/material.dart';
import 'package:food_app/scr/models/category.dart';
import 'package:food_app/scr/widgets/title.dart';
import '../helpers/commens.dart';

List<CategoryModel> categoriesList =[
  CategoryModel(name:"Salad",image:"salad.jpg"),
  CategoryModel(name:"Burger",image:"burger.jpg"),

  CategoryModel(name:"Pizza",image:"pizza.jpg"),
  CategoryModel(name:"Sandwich",image:"sandawitch.jpg"),
  CategoryModel(name:"BreakFast",image:"breakfast.jpg"),
  CategoryModel(name:"Dinner",image:"dinner.jpg"),
  CategoryModel(name:"Desert",image:"desert.jpg"),
  CategoryModel(name:"Egg",image:"egg.jpg"),

];
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red[50],
                            offset: Offset(4,6),
                            blurRadius: 20
                        )]
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset("images/${categoriesList[index].image}",width: 60,height: 60,),
                  ),
                ),
                SizedBox(height: 5,),
                CustomText(text:"${categoriesList[index].name}",size: 14, color:black ),
              ],
            ),
          );
        },
      ),
    );
  }
}
