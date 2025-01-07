import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class SearchboxView extends GetView<HomeController> {
  const SearchboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      barLeading: Icon(Icons.search),
      barHintText: 'Search...',
      barElevation: WidgetStatePropertyAll(0.1),
      isFullScreen: true,
      onChanged: (value) {
        // search
        controller.searchPost(keyword: value);
      },
      suggestionsBuilder: (context, searchController) async {
        // show result as list tile
        final result = controller.result;
        return await Future.delayed(Duration.zero).then(
          (v) => result.map(
            (e) => ListTile(
              title: Text(e.metadata!.title!),
              subtitle: Text(e.metadata!.excerpt!),
              onTap: () {
                // do something
              },
            ),
          ),
        );
      },
    );
  }
}
