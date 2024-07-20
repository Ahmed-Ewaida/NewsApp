import 'package:api/service/articles_Models.dart';
import 'package:api/service/news_Service.dart';
import 'package:api/widgets/newsTile.dart';
import 'package:flutter/material.dart';


class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticalesModels> data=[];
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
     getNews();
  }

  Future<void> getNews() async {
   data = await NewsService().getNews();
  }

  @override

  Widget build(BuildContext context) {


    return SliverList(delegate:
    SliverChildBuilderDelegate((context,index){
    return NewsTile(articalesModels: data[index]);
    },childCount: data.length));
  }
}
