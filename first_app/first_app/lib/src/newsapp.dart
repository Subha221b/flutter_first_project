
import 'package:first_app/src/widgets/newslist.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;

import 'models/newsmodel.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // This widget is the root of your application.
  int counter = 0;
  var model;
  List<NewsModel> news = [];

  void fetchNews() async {
    counter++;
    var result =
        await get('http://ninanews.com/NinaNewsService/api/values/GetLastXBreakingNews?rowsToReturn=10');


 var tagObjsJson = jsonDecode(result.body)['Data'] as List;
  List<NewsModel> tagObjs = tagObjsJson.map((tagJson) => NewsModel.fromJson(tagJson)).toList();


   // var newslist = String(json.decode(result.body));
    setState(() {
   news = tagObjs;
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: NewsList(news),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchNews,
        ),
        appBar: AppBar(
          title: Text("News"),
        ),
      ),
    );
  }
}
