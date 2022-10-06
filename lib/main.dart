import 'package:flutter/material.dart';
import 'package:flutterdevcamp_travelapp/models/data.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Image.network(
              "https://image.freepik.com/free-vector/travel-concept-vector-illustration-with-famous-sights-accessories_95169-98.jpg",
              color: Colors.green[700],
              colorBlendMode: BlendMode.colorBurn,
            ),
      
            const SizedBox(height: 15),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        // height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red.shade800,
                        ),
                        child: const Center(
                          child: Text( "Attraction",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        // height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red.shade800,
                        ),
                        child: const Center(
                          child: Text( "Places",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        // height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red.shade800,
                        ),
                        child: const Center(
                          child: Text( "Hotels",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  
                  ]
                )
              ),
            ), 
      
            const SizedBox(height: 15),
      
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Popular Destination", 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            ),
      
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              
              // scrollDirection: Axis.vertical,
              itemCount: dataList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                childAspectRatio: 1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                ),
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  children: [
                    // the image
                    Image.network( 
                      dataList[index].cityImage, 
                      fit: BoxFit.cover, 
                      height: 200 
                    ),

                    // the text at the bottom (spacer + container with text)
                    Column(
                      children: [
                        const Spacer(flex: 2),
                        Container(
                          width: 200,
                          color: Colors.white.withAlpha(180),
                          child: Expanded(
                            child: Center(
                              child: Text( dataList[index].cityName, 
                                style: TextStyle(
                                    color: Colors.red.shade800, 
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ) 
                                ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]
                );
              },
            ),
      
          ],
        ),
      ),
    );
  }
}


