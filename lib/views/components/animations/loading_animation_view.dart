import 'package:instagram_clone_eldad/views/components/animations/lottie_animation_view.dart';
import 'package:instagram_clone_eldad/views/components/animations/models/lottie_animation.dart';

class LoadingAnimationView extends LottieAnimationView {
  const LoadingAnimationView({super.key})
      : super(animation: LottieAnimation.loading);
}
