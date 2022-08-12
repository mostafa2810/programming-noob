import 'package:flutter/material.dart';

void main() => runApp(const MyProfileApp());

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              stops: const [
                0.1,
                0.9,
              ],
              colors: [
                const Color(0xff213975).withOpacity(0.8),
                const Color(0xff213975).withOpacity(0.2),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                      'assets/images/mostafa.png',
                    ),
                  ),
                ),
                const Text(
                  'Mostafa Helaly',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                   fontFamily: 'Pacifico',
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top:20,left: 30,right: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  child: Row(
                    children:const [
                      Icon(
                        Icons.email,
                        color: Color(0xff213975),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("mostafa.helaly2810@gmail.com",style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff213975),
                        fontWeight: FontWeight.bold,
                      ),),
                      
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top:20,left: 30,right: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  child: Row(
                    children:const [
                      Icon(
                        Icons.phone,
                        color: Color(0xff213975),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+201000539192",style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff213975),
                        fontWeight: FontWeight.bold,
                      ),),
                      
                    ],
                  ),
                )
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
