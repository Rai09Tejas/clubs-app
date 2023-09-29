import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

double getDeviceHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getDeviceWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

double categoriesHeight(BuildContext context) => getDeviceHeight(context) * 0.2;
double followCardHeight(BuildContext context) =>
    getDeviceHeight(context) * 0.28;

Widget heightBox(double height) => SizedBox(height: height);
Widget widthBox(double width) => SizedBox(width: width);

const double smallPadding = 12;
const double mediumPadding = 20;
const double largePadding = 40;

showGlobalSnackBar(String text) {
  rootScaffoldMessengerKey.currentState?.showSnackBar(
    SnackBar(
      content: Center(
        child: Text(
          text,
          style: GoogleFonts.openSans(
            fontSize: 13,
            color: AppColors.light,
          ),
        ),
      ),
    ),
  );
}

headerText(String text) {
  return Text(
    text.toUpperCase(),
    style: GoogleFonts.openSans(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: AppColors.mediumGrey,
    ),
  );
}

List<Map<String, dynamic>> categoriesList = [
  {'title': 'adventure rooms', 'image': 'assets/images/trekking.png', 'active': 5},
  {
    'title': 'events in the city',
    'image': 'assets/images/wheel.png',
    'active': 10
  },
  {
    'title': 'dating & love rooms',
    'image': 'assets/images/dating.png',
    'active': 1
  },
  {'title': 'fitness rooms', 'image': 'assets/images/jump.png', 'active': 1},
  {'title': 'networking rooms', 'image': 'assets/images/connect.png', 'active': 3},
  {'title': 'find new friends', 'image': 'assets/images/friend.png', 'active': 3},
  {
    'title': 'stocks & crypto rooms',
    'image': 'assets/images/stcok.png',
    'active': 3
  },
  {
    'title': 'start-ups & business',
    'image': 'assets/images/startup.png',
    'active': 3
  },
];

List<Map<String, dynamic>> humans = [
  {"name": "Gracy Mark", 'image': 'assets/images/i8.jpg'},
  {"name": "joey King", 'image': 'assets/images/i9.jpg'},
  {"name": "Hailee...", 'image': 'assets/images/i13.jpg'},
  {"name": "Bulbul Ahmed", 'image': 'assets/images/i14.jpg'},
  {"name": "Gracy Mark", 'image': 'assets/images/i15.jpg'},
  {"name": "joey King", 'image': 'assets/images/i8.jpg'},
  {"name": "Hailee...", 'image': 'assets/images/i9.jpg'},
  {"name": "Bulbul Ahmed", 'image': 'assets/images/i13.jpg'},
];

List<Map<String, dynamic>> suggestions = [
  {"title": "Congle Social", 'image': 'assets/images/i12.jpg'},
  {"title": "Artist Hub", 'image': 'assets/images/i11.jpg'},
  {"title": "Chill Out", 'image': 'assets/images/i10.jpg'},
  {"title": "Media", 'image': 'assets/images/i12.jpg'},
];


