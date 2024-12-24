// To parse this JSON data, do
//
//     final usermodelapi = usermodelapiFromJson(jsonString);

import 'dart:convert';

 CategoriesNewsModel usermodelapiFromJson(String str) =>  CategoriesNewsModel.fromJson(json.decode(str));


class  CategoriesNewsModel {
    String status;
    int totalResults;
    List<Article> articles;

     CategoriesNewsModel({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    factory  CategoriesNewsModel.fromJson(Map<String, dynamic> json) =>  CategoriesNewsModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    
}

class Article {
    Source source;
    String author;
    String title;
    String description;
    String url;
    String urlToImage;
    DateTime publishedAt;
    String content;

    Article({
        required this.source,
        required this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
        required this.content,
    });

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
    );

    Map<String, dynamic> toJson() {
      final Map<String,dynamic> data = new Map<String,dynamic>();
      if (this.source != null){
        data['source']= this.source!.toJson();
      }
      data["source"]=this.source.toJson();
       data ["author"]=this.author;
        data["title"]=this.title;
       data ["description"]=this.description;
        data["url"]=this.url;
       data["urlToImage"]= this.urlToImage;
        data["publishedAt"]=this.publishedAt.toIso8601String();
      data["content"]=this.content;
      return data;
    }
}

class Source {
    String id;
    String name;

    Source({
        required this.id,
        required this.name,
    });

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
