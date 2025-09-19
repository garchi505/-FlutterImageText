import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,

        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200, //200
              height: 200, //200
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Colors.blueGrey,

                ),
                  boxShadow: [
                    BoxShadow(
                  color: Colors.lightBlueAccent,
                      blurRadius: 200,
                      offset: Offset(0, 5),
              ),
                  ],
              ),
              child: ClipOval(
                child: Image.network('https://lh3.googleusercontent.com/a/ACg8ocLLmQ_TH8JPRiEx5jnfXYyUCpE7hfZHFxhMOOZRp-HnruYZwnghgIyT9SJLjHYryZkd4XpBTKNzMt9eV0Kut7Vjh9j4GaxN=s288-c-no',
                width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Reiner V. Garchitorena',
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent[700],
            ),
            ),
            SizedBox(height: 20),
            Text('Bachelor of Science Information Technology',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent[700],
              ),
            ),
            SizedBox(height: 20),
            Text('To seek knowledge, embrace the variety of experience, and find understanding in the complexities of life',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent[700],

            ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}