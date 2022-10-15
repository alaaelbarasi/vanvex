import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

import '../screens/view_ship.dart';
import '../services/ship_api.dart';

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
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
        ],
        color: Colors.grey.shade300,
        width: size.width / 1.5,
        textController: textController,
        closeSearchOnSuffixTap: true,
        helpText: "Shipment ID",
        suffixIcon: const Icon(Icons.search),
        onSuffixTap: () async {
          final response =
              await ShipApi().getShipById(shipId: textController.text);
          if (response != null) {
            // ignore: use_build_context_synchronously
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewShip(
                  response: response,
                ),
              ),
            );
          } else {
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Shipment ID is Incorrect'),
              ),
            );
            textController.clear();
          }
        },
      ),
    );
  }
}
