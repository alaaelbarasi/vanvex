import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleShipWidget extends StatefulWidget {
  const SingleShipWidget(
      {Key? key, required this.title, required this.shipCode})
      : super(key: key);
  final String title;
  final String shipCode;
  @override
  State<SingleShipWidget> createState() => _SingleShipWidgetState();
}

class _SingleShipWidgetState extends State<SingleShipWidget> {
  bool isClicked = false;
  Color iconColor = Colors.pinkAccent;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(
          onPressed: () {
            setState(() {
              iconColor = isClicked ? Color(0xffb757575) : Color(0xffbC2185B);
              isClicked = !isClicked;
            });
          },
          icon: Icon(
            Icons.local_shipping_outlined,
            size: 38,
            color: iconColor,
          ),
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(widget.shipCode,
            style: const TextStyle(
              color: Colors.blueAccent,
            )),
        isThreeLine: true,
      ),
    );
  }
}
