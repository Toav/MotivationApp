import 'package:e_commerce/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),


      //drawer
      drawer: DrawerSection(),


      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Find   your", style: TextStyle(color: Colors.black87, fontSize: 50, fontFamily: "LavishlyYours"),),
                    SizedBox(height: 5,),
                    Text("Motivation", style: TextStyle(color: Colors.black, fontSize: 90, fontFamily: "LavishlyYours", letterSpacing: 2),),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black,),
                          hintText: "Search what you're looking for...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Which one gives you motivation?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          todayCard('assets/images/one.jpg'),
                          todayCard('assets/images/two.jpg'),
                          todayCard('assets/images/three.jpg'),
                          todayCard('assets/images/four.jpg'),
                          todayCard('assets/images/five.jpg'),
                          todayCard('assets/images/six.jpg'),
                          todayCard('assets/images/seven.jpg'),
                        ],
                      ),
                    ),
          
                  SizedBox(height: 20,),
                  
          
                  Text("Here is your quotes", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,), 
          
          
                  yourMotivation('assets/images/m1.jpg', 'A smile can bring a ray of sunshine into any day.'),
                  yourMotivation('assets/images/m2.jpg', 'Friendship doubles joy and halves sorrow.'),
                  yourMotivation('assets/images/m3.jpg', 'Of course, bad code can be cleaned up.'),
                  yourMotivation('assets/images/m4.jpg', 'A person who sells eggs should not start a fight in the market.'),
                  yourMotivation('assets/images/m5.jpg', 'Life sometimes sucks and all the cure you need is a bit of laughter.'),
                  yourMotivation('assets/images/m6.jpg', "If you're up to your neck in shit, just don't put your head down.")
          
                  ],
                ),
              )
            ],
          ),
        ) ),
    );
  }


  Widget todayCard(image){
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
              Colors.black.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
            ])
          ),
        ),
      ),);
  }


  Widget yourMotivation(image, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.1),
                    Colors.transparent,
                    Colors.transparent,
                  ])
                  ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(right : 15.0, left: 15),
                        child: InkWell(
                          onTap: 
                          () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Text(text),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Close'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Text(text, 
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 28, 
                              fontFamily: "LavishlyYours",
                              fontWeight: FontWeight.w300),),
                        ),
                      ),
                    ),
        ),
                  
                );
  }
}

