import 'package:flutter/material.dart';

import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({Key? key, required this.userName})
      : super(key: key);
  final userName;

  @override
  State<ProfileImageWidget> createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60.0,
      backgroundColor: Color.fromARGB(69, 227, 242, 253),
      child: ProfilePicture(
        name: widget.userName,
        // radius: 31,
        radius: 45,
        fontsize: 21,
      ),
    );
  }
}
