import 'package:flutter/material.dart';
import '../../constantes/colors.dart';

Widget addStoryWidget(
    @required double size, @required IconData iconData, @required String text) {
  return Column(
    children: [
      Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [linearGradient.lightShade, linearGradient.darkShade])),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(color: grayColor.lightShade),
      ),
    ],
  );
}

Widget StoryWidget(@required double size, @required String imageUrl,
    @required String text, @required bool showGreenStrip) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                showGreenStrip ? Border.all(color: greenColor, width: 2) : null,
          ),
          child: Padding(
            padding: EdgeInsets.all(2.2),
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: grayColor.lightShade),
        ),
      ],
    ),
  );
}
