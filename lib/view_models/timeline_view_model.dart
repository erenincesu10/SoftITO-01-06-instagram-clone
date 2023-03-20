import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post_model.dart';

class TimelineViewModel extends ChangeNotifier {
  List<PostModel> posts = [];

  Future getListData() async {
    await Future.delayed(Duration(seconds: 2));
    int count = Faker().randomGenerator.integer(100, min: 30);
    for (var i = 0; i < count; i++) {
      posts.add(PostModel.fake());
    }
    notifyListeners();
  }
}
