import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task/components/profileSection.dart';
import 'package:internship_task/components/searchPageContent.dart';

class SearchScreen extends StatelessWidget {
  final Color prim = const Color.fromARGB(255, 195, 34, 36);
  final Color sec = const Color.fromARGB(255, 239, 69, 111);

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBarUp(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: SearchPageContent(),
            ),
          ),
        ],
      ),
    );
  }



  SliverAppBar _buildSliverAppBarUp(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 40,
      backgroundColor: prim,
      pinned: true,
      leading: GestureDetector(
        onTap: (){Get.back();},
        child: Padding(
        padding: EdgeInsets.only(left: 9),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      ),
      leadingWidth: 20,
      title: Row(
        children: [
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'lib/images/weekend.png',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'The Weekend',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Community . +11k Members",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.link),
                            title: Text("Invite"),
                          ),
                          ListTile(
                            leading: Icon(Icons.person_add),
                            title: Text("Add member"),
                          ),
                          ListTile(
                            leading: Icon(Icons.people),
                            title: Text("Add Groups"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(4),
             
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
