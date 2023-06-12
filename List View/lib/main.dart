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

  // List<String> students = [
  //   'Rafat',
  //   'Nazmul',
  //   'Rafi',
  //   'Siam',
  //   'Rohan',
  //
  // ];

  Map<int, String> dc = {
    1 : "The Presence",
   2 : "Lucifer Morningstar",
   3:   " Michael Demiurgos",
   4 :  " Elaine Belloc",
   5:  "Spectre (Aztar)",
    6: "The Endless",
    7:  "Anti-Monitor",
    8 : "Darkseid",
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
              child: Text("Top 20 DC Powerful Characters:"),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: dc.length,
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