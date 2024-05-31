import 'package:flutter/material.dart';

class MediaSection extends StatelessWidget {
  MediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Media, docs and links',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios),
              SizedBox(width: 24),
            ],
          ),
          SizedBox(height: 10), // Add some spacing between the rows
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => Container(
                  
                  margin: EdgeInsets.only(left: 6),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/images/weekend.png'), // replace with your image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
