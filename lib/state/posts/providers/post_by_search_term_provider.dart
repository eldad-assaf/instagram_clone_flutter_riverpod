import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/constants/firebase_field_name.dart';
import 'package:instagram_clone_eldad/state/posts/models/post.dart';

import '../../constants/firebase_collection_name.dart';
import '../typedefs/search_term.dart';

///this takes all the posts in the firestore!
/// not optimal for large projects // 17:00:50 //
///  better solution is https://medium.flutterdevs.com/implement-searching-with-firebase-firestore-flutter-de7ebd53c8c9
final postsBySearchTermProvider =
    StreamProvider.family.autoDispose<Iterable<Post>, SearchTerm>(
  (ref, SearchTerm searchTerm) {
    final controller = StreamController<Iterable<Post>>();

    final sub = FirebaseFirestore.instance
        .collection(
          FirebaseCollectionName.posts,
        )
        .orderBy(
          FirebaseFieldName.createdAt,
          descending: true,
        )
        .snapshots()
        .listen(
      (snapshot) {
        final posts = snapshot.docs
            .map(
              (doc) => Post(
                json: doc.data(),
                postId: doc.id,
              ),
            )
            .where(
              (post) => post.message.toLowerCase().contains(
                    searchTerm.toLowerCase(),
                  ),
            );
        controller.sink.add(posts);
      },
    );

    ref.onDispose(() {
      sub.cancel();
      controller.close();
    });

    return controller.stream;
  },
);
