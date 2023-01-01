import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/posts/providers/post_by_search_term_provider.dart';
import 'package:instagram_clone_eldad/views/components/animations/data_not_found_animation_view.dart';
import 'package:instagram_clone_eldad/views/components/animations/error_animation_view.dart';
import 'package:instagram_clone_eldad/views/components/post/posts_grid_view.dart';
import 'package:instagram_clone_eldad/views/constants/strings.dart';
import 'animations/empty_contents_with_text_animation_view.dart';

class SearchGridView extends ConsumerWidget {
  final String searchTerm;

  const SearchGridView({
    super.key,
    required this.searchTerm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (searchTerm.isEmpty) {
      return const EmptyContentsWithTextAnimationView(
        text: Strings.enterYourSearchTerm,
      );
    }

    final posts = ref.watch(
      postsBySearchTermProvider(
        searchTerm,
      ),
    );

    return posts.when(
      data: (posts) {
        if (posts.isEmpty) {
          return const DataNotFoundAnimationView();
        } else {
          return PostsGridView(
            // diffrent from github // sliver on git
            posts: posts,
          );
        }
      },
      error: (error, stackTrace) {
        return const ErrorAnimationView();
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
