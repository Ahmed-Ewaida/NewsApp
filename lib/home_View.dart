
import 'package:api/widgets/news_List_View.dart';
import 'package:flutter/material.dart';

import '../widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "News",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
          Text(
            "Cloud",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
        ],
      ),
        leading: const Icon(Icons.menu),
      ),
      body: const CustomScrollView(
        slivers: [

          SliverToBoxAdapter(child:CategoryItem(),),
          SliverToBoxAdapter(child: SizedBox(height: 10,),),
          NewsListView()
        ],
      ),
    );
  }
}
