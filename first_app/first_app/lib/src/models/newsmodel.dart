import 'dart:convert';

class NewsModel {

  String Khabar_Title;
  String Khabar_Date;
String Pic;




    NewsModel(this.Khabar_Date, this.Khabar_Title,this.Pic);

  factory NewsModel.fromJson(dynamic json) {
    return NewsModel(json['Khabar_Date'] as String, json['Khabar_Title'] as String, json['Pic'] as String);
  }

  @override
  String toString() {
    return '{ ${this.Khabar_Date}, ${this.Khabar_Title} , ${this.Pic}}';
  }
}

  // ImageModel(this.id, this.url, this.title);
/* NewsModel(this.Data);
  NewsModel.getvalues(this.Khabar_Title,this.Khabar_Date);

 NewsModel.fromJson(Map<String, dynamic> parsedJson) {
   Data= parsedJson['Data'];


   var  news = NewsModel.fromJson2(jsonDecode(Data));
   



 }

  factory NewsModel.fromJson2(dynamic json) {
    return NewsModel.getvalues(json['Khabar_Title'] as String, json['Khabar_Date'] as String);
  }
  @override
  String toString() {
    return '{ ${this.Khabar_Title}, ${this.Khabar_Date} }';
  }
  NewsModel.fromJson(Map<String, dynamic> parsedJson) {
    *//*  id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];*//*
    Data= parsedJson['Data'];

    var tagsJson = jsonDecode(arrayText)['tags'];
  }*/

