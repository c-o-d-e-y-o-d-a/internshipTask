import 'package:flutter/material.dart';
import 'package:internship_task/screens/main_screen.dart';

class TagsSection extends StatelessWidget {
  TagsSection({super.key});

  final List<String> tags = [
    'Outdoor',
    'Outdoor',
    'Outdoor',
    'Outdoor',
    'Outdoor'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Row(
          children: [
                        Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                label: Text(
                  'Outdoor',
                  style: TextStyle(color: sec, fontSize: 9),
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: sec, // Border color
                    width: 1.0, // Border width
                  ),
                ),
              ),
            ),
                       Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                label: Text(
                  'Outdoor',
                  style: TextStyle(color: sec, fontSize: 9),
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: sec, // Border color
                    width: 1.0, // Border width
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                label: Text(
                  'Outdoor',
                  style: TextStyle(color: sec, fontSize: 9),
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: sec, // Border color
                    width: 1.0, // Border width
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Chip(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                label: Text(
                  'Outdoor',
                  style: TextStyle(color: sec, fontSize: 9),
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: sec, // Border color
                    width: 1.0, // Border width
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Chip(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                label: Text(
                  '+1',
                  style: TextStyle(color: sec, fontSize: 8, fontWeight: FontWeight.w600),
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: sec, // Border color
                    width: 1.0, // Border width
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
