// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:searchbox/app/data/models/post.dart';

class HomeController extends GetxController {
  //

  List<Post> result = <Post>[].obs;

  List<Post> posts = [];

  @override
  void onInit() {
    super.onInit();
    loadPost();
  }

  searchPost({required String keyword}) async {
    log('post size = ${posts.length}');

    if (keyword.isNotEmpty) {
      if (posts.isNotEmpty) {
        result = posts
            .where((e) => (e.metadata!.title!.toLowerCase().contains(keyword) ||
                e.metadata!.excerpt!.toLowerCase().contains(keyword)))
            .toList();
      }
    } else {
      result.clear();
    }
  }

  void loadPost() {
    rootBundle.loadString('assets/post.json').then((v) {
      posts = postFromJson(v);
    });
  }
}

class SearchResult {
  String title;
  String summary;
  SearchResult({
    required this.title,
    required this.summary,
  });
}
