import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/views/components/search_grid_view.dart';
import 'package:instagram_clone_eldad/views/constants/strings.dart';
import 'package:instagram_clone_eldad/views/extentions/dismiss_keyboard.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final searchTerm = useState('');

    useEffect(() {
      controller.addListener(() {
        searchTerm.value = controller.text.trim();
      });
      return () {};
    }, [controller]); // 17:09:18

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                  labelText: Strings.enterYourSearchTermHere,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      controller.clear();
                      dismissKeyboard();
                    },
                  )),
            ),
          ),
          Expanded(
            child: SearchGridView(searchTerm: searchTerm.value),
          )
        ],
      ),
    );
  }
}
