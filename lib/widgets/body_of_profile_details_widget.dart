import 'package:flutter/material.dart';
import 'package:vanvex/widgets/profile_detaile_widget.dart';

class BodyOfProfileWidget extends StatefulWidget {
  const BodyOfProfileWidget(
      {Key? key,
      required this.userName,
      required this.email,
      required this.phone,
      required this.StoreCode,
      required this.city})
      : super(key: key);
  final userName;
  final email;
  final phone;
  final StoreCode;
  final city;
  @override
  State<BodyOfProfileWidget> createState() => _BodyOfProfileWidgetState();
}

class _BodyOfProfileWidgetState extends State<BodyOfProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: SizedBox(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ProfileDetailWidgwt(title: "User name", trailing: widget.userName),
            ProfileDetailWidgwt(title: "Email", trailing: widget.email),
            ProfileDetailWidgwt(title: "Phone number", trailing: widget.phone),
            ProfileDetailWidgwt(
                title: "store code", trailing: widget.StoreCode),
            ProfileDetailWidgwt(title: "city", trailing: widget.city),
           
          ],
        ),
      ),
    );
  }
}
