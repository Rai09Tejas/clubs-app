import 'package:club_app/utils/constants.dart';
import 'package:club_app/widgets/vertical_list.dart';
import 'package:flutter/material.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          heightBox(10),
          VerticalList(length: 2, title: 'today'),
          VerticalList(length: 4, title: 'Tomorrow')
        ],
      )),
    );
  }
}
