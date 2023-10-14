import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 10,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.red),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
          icon: Icon(Icons.monitor_heart),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
