import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

import '../screens/view_ship.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
      child: AnimSearchBar(
        color: Colors.grey.shade300,
        width: size.width / 1.5,
        textController: textController,
        closeSearchOnSuffixTap: false,
        suffixIcon: const Icon(Icons.search),
        onSuffixTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ViewShip(),
            ),
          );
          setState(() {
            textController.clear();
          });
        },
      ),
    );
  }
}
