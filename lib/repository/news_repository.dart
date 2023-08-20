//get all
//po startne gets specific newest 2 - samostatny list len z dvoch
//ked kliknes na button stiahni vsetky

import 'package:beach_club_virtual/core/entity/news.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final class NewsRepository {

  final FirebaseFirestore firestore;
  List<News>? _cachedHomeNews;

  NewsRepository({required this.firestore});

  Future<List<News>?> getHomeNews() async {
    if (_cachedHomeNews != null) {
      return _cachedHomeNews;
    }
    final reference = firestore.collection("news").withConverter<News>(
        fromFirestore: (snapshot, options) {
          print(snapshot.data());
          return News.fromMap(snapshot.data()!);
        },
        toFirestore: (value, options) => value.toMap());
    try {
      final result = await reference.limit(2).get();
      _cachedHomeNews = [];
      for (var value in result.docs) {
        _cachedHomeNews!.add(value.data());
      }
      return _cachedHomeNews;
    } catch (e, stack) {
      print(e);
      print(stack);
    }
    return null;
  }

}