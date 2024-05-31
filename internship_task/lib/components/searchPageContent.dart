import 'package:flutter/material.dart';
import 'package:internship_task/screens/main_screen.dart';

class SearchPageContent extends StatefulWidget {
  
   SearchPageContent({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  State<SearchPageContent> createState() => _SearchPageContentState();
}

class _SearchPageContentState extends State<SearchPageContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 930, // Set an appropriate height for your use case
            child: Column(
              children: [

              Padding(padding: EdgeInsets.all(10),
              child:Row(
                children: [
                SizedBox(
          width: 260,
          child: TextField(
            
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              hintText: 'Search',
              
              filled: true,
              fillColor: Color.fromARGB(255, 207, 206, 206), // Grey background color
              border: OutlineInputBorder(
                gapPadding: 1,
                borderRadius: BorderRadius.circular(20.0), // Rounded corners
                borderSide: BorderSide.none, // No border
              ),
            ),
          ),
        ),
      
                Spacer(),
               
                Text('cancel',
                style: TextStyle(
                  fontSize:  17,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                ), 
                ),

              ],),),

                SizedBox(
                  height: 500,
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
            )
    )
;
  }
}