import 'package:flutter/material.dart';
import 'package:snapshare/presentation/ui/widgets/circular_avatar.dart';

import '../widgets/post.dart';
import '../widgets/story_tile.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> userPosts = [
    {
      'profileImage':
      'https://b.fssta.com/uploads/application/soccer/headshots/2100.vresize.350.350.medium.55.png',
      'username': 'Lewandoski',
      'postImage':
      'https://static.independent.co.uk/2022/04/04/15/newFile-12.jpg',
    },
    {
      'profileImage':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf0vnKX3v4CxFY1f2-URu30u2mPkD_hkhqTwClYO1Tka0AR4P_bPasGnwO4CoYZD__uEM&usqp=CAU',
      'username': 'Messi',
      'postImage':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUuBXjiZXtj_sbChXdaepzILzixCGTIkDYw&usqp=CAU',
    },
    {
      'profileImage': 'https://pbs.twimg.com/media/ErKDr0UXAAAFux9.jpg',
      'username': 'Sukuna',
      'postImage':
      'https://staticg.sportskeeda.com/editor/2021/11/71cf9-16368203172095-1920.jpg?w=840',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUuBXjiZXtj_sbChXdaepzILzixCGTIkDYw&usqp=CAU'),
              ),
            ),
            Text(
              'snapNshare',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.black,
                  onPressed: () {
                    // Add your notification icon onPressed functionality
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  color: Colors.black,
                  onPressed: () {
                    // Add your message icon onPressed functionality
                  },
                ),
              ],
            ),
          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryTile(),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.white,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: userPosts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Post(
                    profileImage: userPosts[index]['profileImage']!,
                    username: userPosts[index]['username']!,
                    postImage: userPosts[index]['postImage']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }


}
