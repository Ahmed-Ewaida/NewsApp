import 'package:api/service/category_Models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      child: ListView.builder(itemBuilder: (contxet,index){

        return Container(

       width: 200,
          margin: EdgeInsetsDirectional.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey,
          ),

          child: Center(child: Text("${CATEGORYS[index].name}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        );
      },
      itemCount: CATEGORYS.length,scrollDirection: Axis.horizontal,
      ),

    );

  }

}





/*






         Wrap(
      // Gap between adjacent chips.
        spacing:10.0,
        // Gap between lines.
        runSpacing: 6.0,
        children: [
          'business',
          'health',
          'sports',
          'technology',
          'general',
          'entertainment',
          'science',
        ]
            .map(
              (String name) => Chip(
            avatar: CircleAvatar(child: Text(name.substring(0, 1))),
            label: Text(name),
          ),
        )
            .toList(),
        )*/
