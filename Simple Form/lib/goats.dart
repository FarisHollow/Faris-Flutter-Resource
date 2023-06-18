import 'package:flutter/material.dart';

class FootballLegendsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Legends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FootballLegendsScreen(),
    );
  }
}

class FootballLegendsScreen extends StatelessWidget {
  final List<String> legends = [
    'Pele',
    'Diego Maradona',
    'Johan Cruyff',
    'Michel Platini',
    'Franz Beckenbauer',
    'Zinedine Zidane',
    'Cristiano Ronaldo',
    'Lionel Messi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football Legends',
          // textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24,
            // decoration: TextDecoration.lineThrough
          ),),
        backgroundColor: Colors.green,
        centerTitle: false,
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.sports_soccer_outlined),),
        ],
      ),


      body: GridView.builder(
        itemCount: legends.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(legends[index]),
            leading: Icon(Icons.sports_soccer),
            onTap: () {
              // Handle tap on legend
              print('Selected: ${legends[index]}');
            },
          );
        },
      ),
    );
  }
}
