import 'package:flutter/material.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({super.key});

  @override
  State<DrawerSection> createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(30), left: Radius.circular(30),
              )
            ),
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                      margin: EdgeInsets.only(top: 80),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover)
                      ),
                    ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Colors.grey[900]
                          ),
                          child: Icon(Icons.photo, color: Colors.white,),
                        ))
                    ]
                  ),

                  SizedBox(height: 10,),

                  Text('Your Name', 
                    style: TextStyle(
                      fontFamily: "LavishlyYours", 
                      fontSize: 40,
                      fontWeight: FontWeight.w300),
                      ),


                  SizedBox(height: 5,),

                  Text('name@mail.com', 
                    style: TextStyle(
                      fontFamily: "LavishlyYours", 
                      fontSize: 30),
                      ),   
                ],
              ),
            ),
          ),
          
          SizedBox(
            height: 20,
          ),

          TextButton.icon(
            onPressed: () {}, 
            icon: Icon(Icons.public, color: Colors.black, size: 30,), 
            label: Text("Publish", style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(200, 50)),
              backgroundColor: MaterialStatePropertyAll(Colors.grey[200]),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
              ),
              )
            ),),

          SizedBox(height: 10,),

                    TextButton.icon(
            onPressed: () {}, 
            icon: Icon(Icons.slow_motion_video_sharp, color: Colors.black, size: 30,), 
            label: Text("See more", style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(200, 50)),
              backgroundColor: MaterialStatePropertyAll(Colors.grey[200]),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
              ),
              )
            ),),

          SizedBox(height: 200,),

          TextButton.icon(
            onPressed: () {}, 
            icon: Icon(Icons.logout, color: Colors.black, size: 30,), 
            label: Text("Logout", style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(200, 50)),
              backgroundColor: MaterialStatePropertyAll(Colors.grey[200]),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
              ),
              )
            ),),  

        ],
      ),
    );
  }
}