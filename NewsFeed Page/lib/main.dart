import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap & Share',
      debugShowCheckedModeBanner: false,
      home: SnapNshare(),
    );
  }
}

class SnapNshare extends StatelessWidget {
  List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUuBXjiZXtj_sbChXdaepzILzixCGTIkDYw&usqp=CAU',
    'https://static.independent.co.uk/2022/04/04/15/newFile-12.jpg',
    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt4a28b9f98b99984e/641cc85f73a6bb6c4d25f0f6/Cristiano_Ronaldo_Portugal_2023.jpg?auto=webp&format=pjpg&width=3840&quality=60',
    'data:image/jpeg;base64,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',
    'https://i1.sndcdn.com/artworks-BpUoJUcr8gcKv6Hc-oq32zQ-t500x500.jpg'
    // Add more image URLs as needed
  ];

  List<String> profilePictureUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUuBXjiZXtj_sbChXdaepzILzixCGTIkDYw&usqp=CAU',
    'https://b.fssta.com/uploads/application/soccer/headshots/2100.vresize.350.350.medium.55.png',
    'data:image/jpeg;base64,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',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d3f6c26d-2f68-431d-a66f-544d2c4756cd/dfkhuo9-f6f8225b-2868-405f-bba2-da10d984538a.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2QzZjZjMjZkLTJmNjgtNDMxZC1hNjZmLTU0NGQyYzQ3NTZjZFwvZGZraHVvOS1mNmY4MjI1Yi0yODY4LTQwNWYtYmJhMi1kYTEwZDk4NDUzOGEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.QgsVs7zqBLTDuKjZoPSh26Gi9A3XtRZ7MLgCvc591_A',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5143f1e3-2520-44a2-a572-eb70d3106797/dfkokwf-58614d38-5d88-48ad-ae41-c4f007a6f368.png/v1/fill/w_1280,h_1280,q_80,strp/toji_fushiguro_by_aysushinu_dfkokwf-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzUxNDNmMWUzLTI1MjAtNDRhMi1hNTcyLWViNzBkMzEwNjc5N1wvZGZrb2t3Zi01ODYxNGQzOC01ZDg4LTQ4YWQtYWU0MS1jNGYwMDdhNmYzNjgucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.KdpiI92KnYoJL6nsqjjaSZYWnDfmDtD4f79t5W5R74s'
    // Add more profile picture URLs as needed (should match the number of images)
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
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUuBXjiZXtj_sbChXdaepzILzixCGTIkDYw&usqp=CAU'),
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


            Container(
              height: 150,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageUrls[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: NetworkImage(profilePictureUrls[index]),
                          ),
                        ),
                        if (index == 0)
                          Positioned.fill(
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),

    Container(
              padding: EdgeInsets.all(30),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserContainer(
                    'https://b.fssta.com/uploads/application/soccer/headshots/2100.vresize.350.350.medium.55.png',
                    'Lewandoski',
                    'https://static.independent.co.uk/2022/04/04/15/newFile-12.jpg',
                  ),
                  SizedBox(height: 10),
                  _buildUserContainer(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf0vnKX3v4CxFY1f2-URu30u2mPkD_hkhqTwClYO1Tka0AR4P_bPasGnwO4CoYZD__uEM&usqp=CAU',
                    'Messi',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUuBXjiZXtj_sbChXdaepzILzixCGTIkDYw&usqp=CAU',
                  ),
                  SizedBox(height: 10),
                  _buildUserContainer(
                    'https://pbs.twimg.com/media/ErKDr0UXAAAFux9.jpg',
                    'Sukuna',
                    'https://staticg.sportskeeda.com/editor/2021/11/71cf9-16368203172095-1920.jpg?w=840',
                  ),
                ],
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

  Widget _buildUserContainer(
      String profileImage,
      String username,
      String postImage,
      ) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(profileImage),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // Add notification icon onPressed functionality
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Image.network(
            postImage,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  // Add like functionality
                },
              ),
              IconButton(
                icon: Icon(Icons.comment_outlined),
                onPressed: () {
                  // Add comment functionality
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
