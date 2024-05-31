import 'package:flutter/material.dart';
import 'package:internship_task/screens/main_screen.dart';
import 'package:readmore/readmore.dart';

class readText extends StatelessWidget {
  const readText({super.key});
  final content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum aug';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
        child: Container(
          
          padding: EdgeInsets.only(top:20 , left: 14, right:14),
          child: ReadMoreText(
            content,
            trimLines: 3,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: " Show More ",
            trimExpandedText: " Show Less ",
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: sec,
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: sec,
            ),
            style: TextStyle(
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      );
  }
}