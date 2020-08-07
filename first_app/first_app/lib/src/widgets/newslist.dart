import 'package:first_app/src/models/newsmodel.dart';
import 'package:flutter/material.dart';
class NewsList extends StatelessWidget {
  final List<NewsModel> images;

  NewsList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return rowView(images[index]);
      },
    );
  }

  Widget rowView(NewsModel obj) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(children: <Widget>[
        Padding(
          child: Image.network(obj.Pic),
          padding: EdgeInsets.only(bottom: 8.0),
        ),
        Padding(
          child: Text(obj.Khabar_Title,
          textAlign: TextAlign.right,),
         
          padding: EdgeInsets.only(bottom: 8.0),
        ),
        Text(obj.Khabar_Date),
      ]),
    );
  }
}
