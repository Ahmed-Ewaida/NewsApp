import 'package:api/service/news_Service.dart';
import 'package:api/widgets/newsTile.dart';
import 'package:api/widgets/news_List_View.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsListView());
  }
}


