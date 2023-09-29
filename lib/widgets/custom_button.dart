import 'package:club_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.isFollow});
  final bool isFollow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30.0), // Adjust as needed
          right: Radius.circular(30.0), // Adjust as needed
        ),
        border: Border.all(color: AppColors.blue, width: 2.0),
        color: isFollow ? Colors.transparent : AppColors.blue,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          isFollow ? "Follow" : 'Join Now',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: isFollow ? AppColors.blue : Colors.white,
          ),
        ),
      ),
    );
  }
}
