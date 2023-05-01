
import 'package:cloud_firestore/cloud_firestore.dart';

class Song {
  final String id;
  final String name;
  final String imgadd;
  final String url;


  Song({
    required this.id,
    required this.name,
    required this.imgadd,
    required this.url,
  });
}

Stream<List<Song>> getSongs() {
  return FirebaseFirestore.instance
      .collection('songs')
      .snapshots()
      .map((QuerySnapshot query) => query.docs)
      .map((List<QueryDocumentSnapshot> docs) =>
      docs.map((QueryDocumentSnapshot doc) => Song(
        id: doc.id,
        name: doc['name'],
        imgadd: doc['imgadd'],
        url: doc['url'],
      )).toList());
}