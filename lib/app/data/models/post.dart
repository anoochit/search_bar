// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Metadata? metadata;
  String? body;

  Post({
    this.metadata,
    this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        metadata: json["metadata"] == null
            ? null
            : Metadata.fromJson(json["metadata"]),
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "metadata": metadata?.toJson(),
        "body": body,
      };
}

class Metadata {
  String? title;
  String? slug;
  String? author;
  String? excerpt;
  List<String>? categories;
  List<String>? tag;
  DateTime? date;

  Metadata({
    this.title,
    this.slug,
    this.author,
    this.excerpt,
    this.categories,
    this.tag,
    this.date,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        title: json["title"],
        slug: json["slug"],
        author: json["author"],
        excerpt: json["excerpt"],
        categories: json["categories"] == null
            ? []
            : List<String>.from(json["categories"]!.map((x) => x)),
        tag: json["tag"] == null
            ? []
            : List<String>.from(json["tag"]!.map((x) => x)),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "slug": slug,
        "author": author,
        "excerpt": excerpt,
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x)),
        "tag": tag == null ? [] : List<dynamic>.from(tag!.map((x) => x)),
        "date": date?.toIso8601String(),
      };
}
