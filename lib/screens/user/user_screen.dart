import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => UserScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Cart'),
        bottomNavigationBar: CustomNavBar());
  }
}
