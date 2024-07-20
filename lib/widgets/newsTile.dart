import 'package:api/service/articles_Models.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {

  const NewsTile({super.key, required this.articalesModels});
  final ArticalesModels articalesModels;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:articalesModels.image!=null? Image.network(
              articalesModels.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ):Image.network("data:image/png;base64,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")

        ),
        Text(
          articalesModels.title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600),
          maxLines: 2,
        ),
         Text(
        "${articalesModels.subTitle!=null? articalesModels.subTitle:"Ahmed"}",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
