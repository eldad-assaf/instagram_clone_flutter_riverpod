import 'package:instagram_clone_eldad/enums/date_sorting.dart';
import 'package:instagram_clone_eldad/state/comments/models/comment.dart';

import '../models/post_comments_request.dart';

extension Sorting on Iterable<Comment> {
  Iterable<Comment> sortCommeents(
      RequestForPostAndComments requestForPostAndComments) {
    List<Comment> _list = toList();

    if (requestForPostAndComments.sortByCreatedAt) {
      if (requestForPostAndComments.dateSorting == DateSorting.newestOnTop) {
        _list.sort(((a, b) {
          return b.createdAt.compareTo(a.createdAt); //ascending
        }));
      } else if (requestForPostAndComments.dateSorting ==
          DateSorting.oldestOnTop) {
        _list.sort(((a, b) {
          return a.createdAt.compareTo(b.createdAt); //ascending
        }));
      }
    }
    return _list;
  }
}
