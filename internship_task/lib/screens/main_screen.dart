import 'package:flutter/material.dart';
import 'package:internship_task/components/actionBar.dart';
import 'package:internship_task/components/mediaSection.dart';
import 'package:internship_task/components/profileSection.dart';
import 'package:internship_task/components/tagsSection.dart';
import 'package:internship_task/components/textSection.dart';

Color prim = const Color.fromARGB(255, 195, 34, 36);
Color sec = const Color.fromARGB(255, 239, 69, 111);

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            elevation: 0,
            centerTitle: true,
            expandedHeight: 170.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'lib/images/weekend.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          _scrollPosition == 0
              ? _buildSliverAppBarDown()
              : _buildSliverAppBarUp(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: readText(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: TagsSection(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: MediaSection(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ActionBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ProfileSection(),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBarUp() {
    return SliverAppBar(
      expandedHeight: 40,
      backgroundColor: prim,
      pinned: true,
      leading: Padding(
        padding: EdgeInsets.only(left: 9),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
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
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBarDown() {
    return SliverAppBar(
      expandedHeight: 40,
      backgroundColor: prim,
      pinned: true,
      title: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'The weekend',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Community . +11k Members",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                )
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
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                          8.0), // Optional: for rounded corners
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
    
  }
}
