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
  Color iconColor = Color(0xffb757575);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(
          onPressed: () {
            setState(() {
              iconColor = isClicked ? Color(0xffbC2185B) : Color(0xffb757575);
              isClicked = !isClicked;
            });
          },
          icon: Icon(
            Icons.local_shipping_outlined,
            size: 35,
            color: iconColor,
          ),
        ),
        title: Text(widget.title),
        subtitle: Text(widget.shipCode),
        isThreeLine: true,
      ),
    );
  }
}
