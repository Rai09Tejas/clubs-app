import 'package:club_app/utils/colors.dart';
import 'package:club_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {super.key, this.width, this.height, required this.child, this.margin});
  final double? height;
  final double? width;
  final Widget child;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height != null ? height : null,
      width: width != null ? width : getDeviceWidth(context),
      margin: margin != null ? margin : EdgeInsets.all(3),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 2, // Blur radius
            offset: Offset(0, 1), // Offset in the x and y directions
          ),
        ],
      ),
      child: child,
    );
  }
}
