import '../utils/colors.dart';
import '../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestionTile extends StatelessWidget {
  SuggestionTile({super.key, required this.name, required this.image});
  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(name,
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w800, fontSize: 18)),
        heightBox(10),
        ClipOval(
          child: Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        heightBox(10),
        Container(
          width: getDeviceWidth(context) * 0.3,
          child: Text(
            'Lorem ipsumlo dolor sit amet, consectetur ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.nunito(color: AppColors.dark, fontSize: 16),
          ),
        ),
        heightBox(10),
      ],
    );
  }
}
