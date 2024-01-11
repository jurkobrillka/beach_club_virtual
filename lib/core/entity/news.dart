import 'package:cloud_firestore/cloud_firestore.dart';

class News{
  final String title;
  final String subTitle;
  final String content;
  final Timestamp dateTime;
  final String autor;
  final String imageUrl;

  News({
    required this.title,
    required this.subTitle,
    required this.content,
    required this.dateTime,
    required this.autor,
    required this.imageUrl});

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'subTitle': this.subTitle,
      'content': this.content,
      'dateTime': dateTime,
      'autor': this.autor,
      'imageUrl': this.imageUrl,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    return News(
      title: map['title'] as String,
      subTitle: map['subTitle'] as String,
      content: map['content'] as String,
      dateTime: map['dateTime'] as Timestamp,
      autor: map['autor'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }
}