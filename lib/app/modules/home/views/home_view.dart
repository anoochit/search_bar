import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:searchbox/app/modules/home/views/searchbox_view.dart';

import '../controllers/home_controller.dart';

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
          ))
          // content
        ],
      ),
    ));
  }
}
