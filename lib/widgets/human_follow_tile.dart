import '../utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class HumanFollowTile extends StatelessWidget {
  HumanFollowTile({super.key, required this.name, required this.image});
  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        heightBox(10),
        Text(name,
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 18)),
        heightBox(10),
        Text(
          '30 Followers',
          style: GoogleFonts.nunito(color: AppColors.dark, fontSize: 16),
        ),
        heightBox(20),
      ],
    );
  }
}
