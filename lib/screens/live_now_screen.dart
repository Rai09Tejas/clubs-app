import 'package:club_app/utils/colors.dart';
import 'package:club_app/utils/constants.dart';
import 'package:club_app/widgets/custom_container.dart';
import 'package:club_app/widgets/horizontal_list.dart';
import 'package:club_app/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveNowScreen extends StatelessWidget {
  LiveNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcome(context),
              VerticalList(length: 2, title: 'trending rooms'),
              HorizontalList(
                length: categoriesList.length,
                title: 'categories',
                widgetIndex: 0,
                isShowFollow: false,
              ),
              HorizontalList(
                length: categoriesList.length,
                title: 'humans to follow',
                widgetIndex: 1,
                isShowFollow: true,
              ),
              VerticalList(length: 4, title: "Live Now"),
              HorizontalList(
                length: categoriesList.length,
                title: 'suggestions',
                widgetIndex: 2,
                isShowFollow: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  welcome(BuildContext context) {
    return Container(
      child: CustomContainer(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Welcome to Congle Rooms 👋🏻',
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: AppColors.mediumGrey,
                  )
                ],
              ),
              Container(
                child: Text(
                  'Create or join live audio conversations to connect with\nhumans around your location across meaningfultopics\nand also plan a in-person meetings with them.\nDon\'t Worry You Join Silently',
                  style: GoogleFonts.nunito(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(10)),
    );
  }

  clubsJoin(BuildContext context, String title, int length) {
    Map<String, dynamic> trendingContent = {
      "title": "Medical Student Only Connect Now",
      "club": "Doctors Club",
      "interested": 29,
      "description": "/ Room for the doctors by the doctors",
      "joinCount": 39
    };
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(title),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: length,
            itemBuilder: (BuildContext context, int i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomContainer(
                  height: getDeviceHeight(context) * 0.15,
                  child: Container(
                    child: Text('Trending'),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  humansToFollow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText('Categories'),
          heightBox(20),
          Container(
            height: getDeviceHeight(context) * 0.2,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) => Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: CustomContainer(
                    width: getDeviceWidth(context) * 0.4,
                    child: Container(
                      child: Text('Trending'),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  suggestions(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText('Categories'),
          heightBox(20),
          Container(
            height: getDeviceHeight(context) * 0.2,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) => Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: CustomContainer(
                    width: getDeviceWidth(context) * 0.4,
                    child: Container(
                      child: Text('Trending'),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
