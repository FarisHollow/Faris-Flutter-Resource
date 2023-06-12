import 'package:flutter/material.dart';

/// Listview, divider, Scrollbar, Stack, Align, Positioned,

void main() {
  runApp(MyApp(
    appName: 'Comics App',
  ));
}

class MyApp extends StatelessWidget {

  final String appName;

  const MyApp({required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {

  var picdc = [
    {"img" :"https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/11/The-Presence-DC-Universe.jpg", "name" :"The Presence", },
    {"img" :"images/lucifer.jpg", "name" :"Lucifer", },
    {"img" :"https://img.wattpad.com/story_parts/411/images/1686f460557fb6c3151772397719.jpg", "name" :"Michael Demiurgos", },
    {"img" :"images/elaine.jpg", "name" :"Elaine Belloc", },
    {"img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVjHytEeSunewltatRyZrk0d_DutmqN5LgXw&usqp=CAU", "name" :"Spectre", },
    {"img" :"https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/12/sandman-the-endess.jpg", "name" :"The Endless", },
    {"img" :"images/antim.jpg", "name" :"Anti Monitor", },
    {"img" :"images/cas.jpg", "name" :"Cosmic Armour Superman", },
    {"img" :"images/prs.jpg", "name" :"Superman Prime", },
    {"img" :"images/drm.jpg", "name" :"Doctor Manhattan", },
    {"img" :"images/lobo.jpg", "name" :"Lobo", },
    {"img" :"images/wally.jpg", "name" :"Wally West", },
    {"img" :"images/gl.jpg", "name" :"Green Lantern", },
    {"img" :"images/ca.jpg", "name" :"Captain Atom", },
    {"img" :"images/st.jpg", "name" :"Swamp Thing ", },
    {"img" :"images/trigon.jpg", "name" :"Trigon", },
    {"img" :"images/ed.jpg", "name" :"Etrigan Demon", },
    {"img" :"images/ps.jpg", "name" :"Phantom Stranger", },
    {"img" :"images/mordru.jpg", "name" :"Mordru", },
    {"img" :"images/ba.jpg", "name" :"Black Adam", },



  ];

  Map<int, String> dc = {
    1 : "The Presence",
   2 : "Lucifer Morningstar",
   3:   " Michael Demiurgos",
   4 :  " Elaine Belloc",
   5:  "Spectre",
    6: "The Endless",
    7:  "Anti-Monitor",
    8 : "Cosmic Armour Superman",
    9 : "Superman Prime One Million",
    10 : "Doctor Manhattan",
    11 : "Wonder Woman (with God of War powers)",
    12 :"Flash (Wally West, Post-Crisis)",
    13 : "Green Lantern (Kyle Rayner, White Lantern)",
    14: "Captain Atom",
    15 :"Swamp Thing",
    16: "Trigon",
    17: "Etrigan the Demon",
    18 :"The Phantom Stranger",
    19: "Mordru",
    20: "Black Adam (with the power of Shazam)",
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('MARVEL & DC',
            // textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w700,
              fontSize: 24,
              // decoration: TextDecoration.lineThrough
            ),),
          backgroundColor: Colors.deepPurple,
        ),
        body:
        // ListView.builder(
        //   itemCount: students.length,
        //   itemBuilder: (context, index) {
        //     return Column(
        //       children: [
        //         ListTile(
        //           title: Text(students[index]),
        //         ),
        //         Divider(
        //           height: 4,
        //           color: Colors.red,
        //         ),
        //       ],
        //     );
        //   },
        // ),
      Scrollbar(
      thickness: 10,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Text("Top 20 DC Powerful Characters:",
                style: TextStyle(
                  fontSize: 30
                )),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: dc.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.list_alt),
                  title: Text(dc.values.elementAt(index).toString()),
                  subtitle: Text(dc.keys.elementAt(index).toString()),
                trailing: SizedBox(
                width: 80, // Set a specific width for the image
                height: 80, // Set a specific height for the image
                child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                picdc[index]["img"]!,
                fit: BoxFit.cover,
                ),
                ),
                ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 0,
                  color: Colors.red,
                );
              },
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Text("Top 20 Marvel Powerful Characters:"),
            ),
            SizedBox(
              height: 500,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: dc.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListTile(
                      title: Text(dc.values.elementAt(index).toString()),
                      subtitle: Text(dc.keys.elementAt(index).toString()),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                    color: Colors.red,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),


    /* body: ListView.separated(
        itemCount: universities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(universities.values.elementAt(index).toString()),
            subtitle: Text(universities.keys.elementAt(index).toString()),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
            color: Colors.yellow,
          );
        },
      )*/
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Stack(
      //       children: [
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.yellow,
      //           alignment: Alignment.center,
      //         ),
      //         Container(
      //           width: 30,
      //           height: 30,
      //           color: Colors.pink,
      //         ),
      //         Positioned(
      //           // bottom: 10,
      //           // right: 10,
      //           // top: 10,
      //           // left: 10,
      //           child: Container(
      //             color: Colors.black,
      //           ),
      //         ),
      //         Positioned.fill(
      //           child: Align(
      //             alignment: Alignment.center,
      //             child: Text(
      //               'Hello',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: 500,
      //           height: 400,
      //           // color: Colors.black,
      //         )
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}