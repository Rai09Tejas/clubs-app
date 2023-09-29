import 'package:club_app/utils/colors.dart';
import 'package:club_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import 'custom_button.dart';
import 'stacked_profile_pic.dart';

class VerticalList extends StatelessWidget {
  VerticalList({
    super.key,
    required this.length,
    required this.title,
    this.isUpcoming = false,
  });
  int length;
  String title;
  bool isUpcoming;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(title),
          heightBox(20),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            itemCount: length,
            itemBuilder: (BuildContext context, int i) => Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: CustomContainer(
                    height: isUpcoming
                        ? getDeviceHeight(context) * 0.3
                        : getDeviceHeight(context) * 0.25,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isUpcoming)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('11:00 PM',
                                  style: GoogleFonts.nunito(fontSize: 14)),
                              Icon(
                                Icons.notifications,
                                color: AppColors.mediumGrey,
                              )
                            ],
                          ),
                        if (isUpcoming)
                          Divider(
                            thickness: 1,
                            color: AppColors.dark,
                          ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Medical Student Only Connect Now",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Doctors Club   ".toUpperCase(),
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.mediumGrey,
                                    fontSize: 16)),
                            Icon(
                              Icons.home,
                              color: AppColors.blue,
                            )
                          ],
                        ),
                        FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Discussion on how Medical Students do after MMBS",
                              style: GoogleFonts.nunito(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            StackedProfileWidget(),
                            if (!isUpcoming) CustomButton(isFollow: false)
                          ],
                        )
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}
