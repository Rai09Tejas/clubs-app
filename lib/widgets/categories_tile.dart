import '../utils/colors.dart';
import '../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({super.key, required this.title, required this.active, required this.image});
  final String title;
  final int active;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: categoriesHeight(context) * 0.78,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(),
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w800, fontSize: 16)),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(image),
          ),
          Text(
            '$active Active Rooms',
            style: GoogleFonts.nunito(color: AppColors.mediumGrey),
          ),
        ],
      ),
    );
  }
}
