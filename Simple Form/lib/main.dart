import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appName: 'Form',
  ));
}

class MyApp extends StatelessWidget {

  final String appName;

  const MyApp({required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false ,
    );
  }
}

MyAlertDialog(context){
  return showDialog(
      context: context,
      builder:(BuildContext context){

        return Expanded(
            child: AlertDialog(
              title: Row(
                children: [
                  Icon(Icons.key_off, color: Colors.black), // Alert icon
                  SizedBox(width: 8), // Adjust the spacing between the icon and title
                  Text("Opps!"),
                ],
              ),
              content: Text("Sorry, There is an issue?"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Ok"),),

              ],
            )
        );
      }
  );
}

class HomeScreen extends StatelessWidget {

  TextEditingController _NameEditingController = TextEditingController();
  TextEditingController _PassTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('Far_muris',
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
          onPressed: (){},
          icon: Icon(Icons.home),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active),),

        ],


      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text("Login Here:",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(height: 10,),


          Center(child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset("images/faris.jpg", fit: BoxFit.contain, height: 100,)
          )
          ),

          SizedBox(height: 3,),

          Text("Founder of Farmuris"),

          SizedBox(height: 15,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
                controller: _NameEditingController,
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                    labelText: "Enter your name:",
                    hintText: "Faris",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 20,
                        )
                    )
                )

            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
                controller: _PassTextEditingController,
                obscureText: true,
                style: TextStyle(fontSize: 18,),
                decoration: InputDecoration(
                    labelText: "Enter Password:",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 20,
                        )
                    )
                )

            ),
          ),

          SizedBox(height: 5,),

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(onPressed: (){},
                  child: Text("Forgot your password?")
              ),
            ),
          ),

          SizedBox(height: 25,),

          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: () {print(_NameEditingController.text);
              print(_PassTextEditingController.text);
              _NameEditingController.clear();
              _PassTextEditingController.clear();
              MyAlertDialog(context);},
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20), // Set the desired font size
                padding: EdgeInsets.all(15), // Adjust the padding
                backgroundColor: Colors.blue, // Set the background color
                // Add any additional styling properties you need
              ),
              child: Text("Login"),
            ),
          ),



        ],
      ),


    );
  }
}