import 'package:club_app/widgets/categories_tile.dart';
import 'package:club_app/widgets/custom_button.dart';
import 'package:club_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'human_follow_tile.dart';
import 'suggestions_tile.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList(
      {super.key,
      required this.length,
      required this.title,
      required this.widgetIndex,
      this.isShowFollow = true});
  int length, widgetIndex;
  String title;
  bool isShowFollow;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(title),
          heightBox(20),
          Container(
            height: !isShowFollow
                ? categoriesHeight(context)
                : followCardHeight(context),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widgetIndex == 0
                  ? categoriesList.length
                  : widgetIndex == 1
                      ? humans.length
                      : suggestions.length,
              itemBuilder: (BuildContext context, int i) => Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: CustomContainer(
                    height: !isShowFollow
                        ? categoriesHeight(context)
                        : followCardHeight(context),
                    width: getDeviceWidth(context) * 0.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        widgetIndex == 0
                            ? CategoryTile(
                                title: categoriesList[i]['title'],
                                active: categoriesList[i]['active'],
                                image: categoriesList[i]['image'])
                            : widgetIndex == 1
                                ? HumanFollowTile(
                                    name: humans[i]['name'],
                                    image: humans[i]['image'])
                                : SuggestionTile(
                                    image: suggestions[i]['image'],
                                    name: suggestions[i]['title'],
                                  ),
                        if (isShowFollow)
                          CustomButton(
                            isFollow: true,
                          )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
