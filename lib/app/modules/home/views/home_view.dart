import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'searchbox_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          // searchbox
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchboxView(),
            ),
          ),
          // content
          Expanded(
            child: ListView.builder(
              itemCount: controller.posts.length,
              itemBuilder: (BuildContext context, int index) {
                final post = controller.posts[index];
                return ListTile(
                  title: Text('${post.metadata?.title}'),
                  subtitle: Text('${post.metadata?.excerpt}'),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
