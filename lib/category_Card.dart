import 'package:api/service/category_Models.dart';
import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "${CATEGORYS}",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),

      ),
    );
  }
}
