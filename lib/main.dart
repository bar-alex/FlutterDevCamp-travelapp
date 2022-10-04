import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App -- materialapp title',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.teal,
      ),
      home: const Home(title: 'Travel App 🗺'),
    );
  }
}



class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.teal.shade800,
          backgroundColor: Colors.red.shade800,
          title: Center(
            child: Text(
              title,
              // style: const TextStyle(fontSize: 24, fontFamily: "Times New Roman"),
              style: GoogleFonts.lobster(fontSize: 28),
            ),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.network(
            "https://image.freepik.com/free-vector/travel-concept-vector-illustration-with-famous-sights-accessories_95169-98.jpg",
            color: Colors.green[700],
            colorBlendMode: BlendMode.colorBurn,
          ),

          const SizedBox(height: 15),

          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    // height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red.shade800,
                    ),
                    child: const Center(
                      child: Text("Hotels",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 15),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Popular destinations", 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
          ),

        ],
      ),
    );
  }
}


