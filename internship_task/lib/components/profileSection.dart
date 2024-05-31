import 'package:flutter/material.dart';
import 'package:internship_task/screens/main_screen.dart';
import 'package:get/get.dart';
import 'package:internship_task/search_screen.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Members",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Get.to(()=>  SearchScreen(), transition: Transition.downToUp);
                },
                child: Icon(
                    Icons.search_rounded,
                  )
              )
            ],
          ),
          // Added a SizedBox to constrain the height of the ListView.builder
          SizedBox(
            height: 400, // Set an appropriate height for your use case
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/images/user_photo.png'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yashika',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '29, India',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: sec,
                          padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 12), // Reduced vertical padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        child: Text(
                          "         Add        ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
