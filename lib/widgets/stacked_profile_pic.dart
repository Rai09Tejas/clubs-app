import 'package:club_app/utils/constants.dart';
import 'package:flutter/material.dart';

class StackedProfileWidget extends StatelessWidget {
  double circleSize = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceHeight(context) * 0.1,
      width: circleSize * 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            child: CircleImage(
              imageAsset:
                  'assets/images/i4.jpg', // Replace with your image asset path
              imageSize: circleSize, // Adjust the image size as needed
            ),
          ),
          Positioned(
            left: (circleSize - (circleSize / 2)),
            child: CircleImage(
              imageAsset:
                  'assets/images/i5.jpg', // Replace with your image asset path
              imageSize: circleSize, // Adjust the image size as needed
            ),
          ),
          Positioned(
            left: (circleSize - (circleSize / 2)) * 2,
            child: CircleImage(
              imageAsset:
                  'assets/images/i6.jpg', // Replace with your image asset path
              imageSize: circleSize, // Adjust the image size as needed
            ),
          ),
          Positioned(
            left: (circleSize - (circleSize / 2)) * 3,
            child: CircleImage(
              imageAsset:
                  'assets/images/i7.jpg', // Replace with your image asset path
              imageSize: circleSize, // Adjust the image size as needed
            ),
          ),
          Positioned(
            left: (circleSize - (circleSize / 2)) * 4,
            child: Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Background color for the circle
              ),
              child: Center(
                child: Text(
                  "+20",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final String imageAsset;
  final double imageSize;

  CircleImage({
    required this.imageAsset,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
