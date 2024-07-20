
import 'package:api/service/articles_Models.dart';
import 'package:dio/dio.dart';

class NewsService{
  final Dio dio=Dio();
  getNews()async{
  Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=0c418ce2ad364ce5a54b886a9d74e6f2");
  Map<String,dynamic> jsonData = response.data;
  List<dynamic> articles =jsonData["articles"];
  List<ArticalesModels> articlesData =[];

  for(var i in articles){
    ArticalesModels articalesModels =ArticalesModels(
        title: i["title"],
        image: i["urlToImage"],
        subTitle: i["description"]);
    articlesData.add(articalesModels);
  }

  return articlesData;
}

}