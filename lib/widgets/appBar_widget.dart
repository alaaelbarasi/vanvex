import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key, required this.screen_name}) : super(key: key);
  final screen_name;
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.blue),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "$screen_name",
        style: TextStyle(color: Colors.blue.shade700),
      ),
      centerTitle: true,
    );
  }
}
