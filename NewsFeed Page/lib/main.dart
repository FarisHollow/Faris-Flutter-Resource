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
                radius: 14,
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
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }
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
