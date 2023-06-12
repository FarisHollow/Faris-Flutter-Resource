import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appName: 'Faris\'s App',
  ));
}

class MyApp extends StatelessWidget {

  final String appName;

  const MyApp({super.key, required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

MySnackBar(message,  context){

  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)));
}

MyAlertDialog(context){
  return showDialog(
      context: context,
      builder:(BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: Row(
                children: [
                  Icon(Icons.question_mark_rounded, color: Colors.orange), // Alert icon
                  SizedBox(width: 8), // Adjust the spacing between the icon and title
                  Text("Are you sure?"),
                ],
              ),
              content: Text("Confirm Purchase?"),
              actions: [
                TextButton(onPressed: (){
                  MySnackBar("Confirmed Purchase", context);
                  Navigator.of(context).pop();
                }, child: Text("Yes"),),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
              ],
            )
        );
      }
  );
}

class HomeScreen extends StatelessWidget {

  TextEditingController _TextEditingController = TextEditingController(text: 'Bugatti Chiron is ');
  TextEditingController _dollarTextEditingController = TextEditingController();

  var MyCars = [
    {"img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiw4IHoMAhPLUjIVDBlbr0N1lL9Tk9gcBHwSJMt56EePNKxc83Us63vE1p4ZcF9huIsJM&usqp=CAU", "brand" :"Bugatti Chiron", "price": " Price :\$20,90000"},
    {"img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuHvJlKkHcqB9nl5XY4zgK9fdBlZRs3fjuCCOCVhe7MWdZCw0xcFlntGi68kFShEZlWpQ&usqp=CAU", "brand" :"Bugatti Centodieci", "price": " Price :\$80,60000"},
    {"img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWC0Yizq0fGOiStpTM7KEJBlTkuhkjM-DuZpIJKOv5g-Zfgi6L1dYATyO2Mv4d9XXNOk&usqp=CAU", "brand" :"Lamborghini", "price": "Price :\$40,00000"},
    {"img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTJ9MjtmJwgYP6GQ0rxhMGCtXfAuiNeRK5UGtUt0QVTho6VvNyd6teSYO4fRtIQ0o4ic&usqp=CAU", "brand" :"Toyota Supra MK4", "price": "Price :\$32,00000"},
    {"img" :"https://image.cnbcfm.com/api/v1/image/101242908-front-jpg-[2]r.jpg?v=1386700473&w=1600&h=900", "brand" :"Ferrari SF90", "price": "Price :\$5,00000"},
    {"img" :"https://s3-prod.autonews.com/s3fs-public/SPYDER-MAIN_i.jpg", "brand" :"Porsche", "price": " Price :\$18,00000"},
    {"img" :"https://imgd.aeplcdn.com/0x0/cw/ec/21686/Jaguar-XJ-L-Right-Front-Three-Quarter-64990.jpg?v=201711021421", "brand" :"Jaguar XK", "price": "Price :\$11,00000"},
    {"img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfHheuyDDccg0dj3pS891Gwf0BAYbXnvkgPDJOTK0REkCcpuewTzKUTTsABueIF8Gbplw&usqp=CAU", "brand" :"Mc Laren P1 GTR", "price": "Price :\$28,00000"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              MySnackBar("Searching....", context);
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              MySnackBar("Going to Settings...", context);
            },
          ),
          IconButton(
            icon: Icon(Icons.card_giftcard_rounded),
            onPressed: () {
              MySnackBar("Checking Gift Cards....", context);
            },
          ),
        ],
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w700,
              wordSpacing: 0.6,
              letterSpacing: 0.6,
            ),
            children: [
              TextSpan(
                text: "C",
                style: TextStyle(
                  fontSize: 35, // Change the font size of 'C'
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "ar's",
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: "", //in case of spacing in need

              ),

              TextSpan(
                text: "Hub",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.orange,
        centerTitle: false,
        toolbarHeight: 65,
        elevation: 20,
        titleSpacing: 0,
        shadowColor: Colors.orange,

      ),
      body: SingleChildScrollView(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 10, top: 20),
                  child: OutlinedButton.icon(

                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.orange),
                          elevation: 20
                      ),
                      onPressed: (){},
                      icon : Icon(Icons.attach_money_sharp),
                      label: Text('Auction',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,

                          ) )),
                ),
              ],
            ),


            Container(

              margin: EdgeInsets.only(bottom: 75),
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white70.withOpacity(0.5), // Set the color and opacity of the shadow
                    spreadRadius: 5, // Set the spread radius of the shadow
                    blurRadius: 7, // Set the blur radius of the shadow
                    offset: Offset(0, 3), // Set the offset of the shadow
                  ),
                ],
                border: Border.all(color: Colors.white, width: 6),
                borderRadius: BorderRadius.circular(6),
                color: Colors.orange,

              ),
              // alignment: Alignment.center,
              // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              child: Column(
                children: [
                  Icon(Icons.directions_car, size: 50),
                  Text(
                    'Super Cars',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),



            Text('Welcome to Car Showroom App',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 12,),

            Text('Watch our Super Cars',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                )
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.car_crash_rounded), color: Colors.orange),
            SizedBox(height: 15,),

            Container(
              margin: EdgeInsets.only(top: 9),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white70.withOpacity(0.5), // Set the color and opacity of the shadow
                    spreadRadius: 5, // Set the spread radius of the shadow
                    blurRadius: 7, // Set the blur radius of the shadow
                    offset: Offset(0, 3), // Set the offset of the shadow
                  ),
                ],
                border: Border.all(color: Colors.white, width: 6),
                borderRadius: BorderRadius.circular(6),


              ),
              // alignment: Alignment.center,
              // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){MySnackBar("Bugatti Chiron", context);},
                    child: Image.asset('images/bugatti.jpg',
                      fit: BoxFit.contain,
                      height: 110,
                      width:  150,
                    ),),
                ],
              ),
            ),

            SizedBox(height: 80,),


            Column(

              children: [
                Text(
                  'Cars List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40,),
                Container(

                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      childAspectRatio: 1.2,

                    ),
                    shrinkWrap: true,
                    itemCount: MyCars.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {  String brand = MyCars[index]['brand']!;
                        String price = MyCars[index]['price'] ?? 'Price not available';
                        MySnackBar('$brand - $price', context);

                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          height: 200,

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              MyCars[index]["img"]!,
                              fit: BoxFit.fill,



                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 60,),



            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20, right: 50, left: 50),
              child: TextField(
                controller: _TextEditingController,

                style: TextStyle(

                  color: Colors.white, // Set the color of the typed text
                ),

                decoration: InputDecoration(
                  fillColor: Colors.grey[800], // Set the background color of the TextField
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.white, width : 3),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),

                  label: Text('Give your car preferences:',
                    style: TextStyle(
                      color : Colors.white,
                      fontSize: 20,

                    ),),

                  hintStyle: TextStyle(
                    color: Colors.white, // Set the color of the hint text
                  ),

                ),
                textAlign: TextAlign.start,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 10, right: 50, left: 50),
              child: TextField(
                controller: _dollarTextEditingController,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, // Set the color of the typed text
                ),
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  fillColor: Colors.grey[800], // Set the background color of the TextField
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide.none,
                  ),

                  focusedBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.white, width : 3),
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),

                  prefix: Text(
                    '\$ ', // Set the fixed '$' symbol
                    style: TextStyle(
                      color: Colors.white, // Set the color of the fixed symbol
                    ),
                  ),


                  hintText: 'Enter your budget:',
                  hintStyle: TextStyle(
                    color: Colors.white, // Set the color of the hint text
                  ),

                ),
              ),
            ),


            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    // minimumSize: Size(100, 40),
                    // maximumSize: Size(1000, 40),
                    elevation: 10,
                    padding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: Colors.orangeAccent,
                          width: 3,
                        ))),
                onPressed: () { print(_TextEditingController.text);
                print(_dollarTextEditingController.text);
                _TextEditingController.clear();
                _dollarTextEditingController.clear();
                MyAlertDialog(context);
                },
                icon : Icon(Icons.shopping_cart),
                label: Text('Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
            ),









          ],



        ),

      ),






      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle button tap
        },
        child: Icon(Icons.cable_sharp),
        backgroundColor: Colors.orange,
      ),


      bottomNavigationBar: BottomNavigationBar(
        elevation: 27,


        backgroundColor: Colors.black54,
        selectedItemColor: Colors.orange, // Set the color of the selected item
        unselectedItemColor: Colors.white70,


        currentIndex: 0, //Shows which one to be active
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental_outlined), label: "Contract"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profile"),

        ],

        onTap: (int index){
          if(index == 0){
            MySnackBar("Going to home menu....", context);
          }
          if(index == 1){
            MySnackBar("Rent Car....", context);
          }
          if(index == 2){
            MySnackBar("Going to Profile....", context);
          }
        },
      ),



      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(

          children: [
            const DrawerHeader(

                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.orange),
                  accountName: Text("Mir Faris", style: TextStyle(color: Colors.white)),
                  accountEmail: Text("mirfaris79@gmail.com", style: TextStyle(color: Colors.white)),
                  // currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQymUrbs2H6p32KIMGMRHdLVGRxuLrkUSgJEPbdKnnIBURsnmwezznm6gqXO8nzGm5efO0&usqp=CAU"),

                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "data:image/jpeg;base64,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",
                    ),
                  ),
                )),


            ListTile(
              shape: Border(bottom: BorderSide(width: 1, color: Colors.white),),
              onTap: () {
                print('tapped');
              },
              onLongPress: () {
                print('On long press');
              },
              title: Text('Experts', style: TextStyle(
                color: Colors.white,
              ),),
              subtitle: Text('Designations'),
              leading: Icon(Icons.person_2_outlined, size: 32,),
              trailing: Icon(Icons.arrow_forward_outlined),
              tileColor: Colors.white24.withOpacity(0.3),
              contentPadding: EdgeInsets.symmetric(horizontal: 16,),
            ),


            ListTile(
              shape: Border(bottom: BorderSide(width: 1, color: Colors.white),),
              onTap: () {
                print('tapped');
              },
              onLongPress: () {
                print('On long press');
              },
              title: Text('Registration', style: TextStyle(
                color: Colors.white,
              ),),
              subtitle: Text('Information'),
              leading: Icon(Icons.app_registration_sharp, size: 32,),
              trailing: Icon(Icons.arrow_forward_outlined),
              tileColor: Colors.white24.withOpacity(0.3),
              contentPadding: EdgeInsets.symmetric(horizontal: 16,),
            ),
            ListTile(
              shape: Border(bottom: BorderSide(width: 1, color: Colors.white),),
              onTap: () {
                print('tapped');
              },
              onLongPress: () {
                print('On long press');
              },
              title: Text('Cash', style: TextStyle(
                color: Colors.white,
              ),),
              subtitle: Text('Transaction'),
              leading: Icon(Icons.attach_money_sharp, size: 32,),
              trailing: Icon(Icons.arrow_forward_outlined),
              tileColor: Colors.white24.withOpacity(0.3),
              contentPadding: EdgeInsets.symmetric(horizontal: 16,),
            ),


          ],
        ),

      ),

    );


  }
}