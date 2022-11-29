import 'package:flutter/material.dart';
import 'package:instagram_clone_eldad/views/components/animations/empty_contents_animation_view.dart';

class EmptyContentsWithTextAnimationView extends StatelessWidget {
  final String text;
  const EmptyContentsWithTextAnimationView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white54),
          ),
        ),
        const EmptyContentsAnimationView()
      ],
    );
  }
}
