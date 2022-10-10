import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterdevcamp_travelapp/models/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/place_details.dart';

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
      home: Home(title: 'Travel App 🗺'),
    );
  }
}



class Home extends StatelessWidget {
  Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.teal.shade800,
          backgroundColor: Colors.red.shade800,
          centerTitle: true,
          title: Text(
            title,
            style: GoogleFonts.lobster(
              fontSize: 28,
              shadows: [ const Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Attraction
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: PhysicalModel(
                        color: Colors.red.shade800,
                        borderRadius: BorderRadius.circular(8),
                        elevation: 10.0,
                        child: Container(
                          width: 100,
                          alignment: Alignment.center,
                          child: const Text( "Attraction",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
                              )),
                        ),
                      ),
                    ),
                    // Places
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: PhysicalModel(
                        color: Colors.red.shade800,
                        borderRadius: BorderRadius.circular(8),
                        elevation: 10.0,
                        child: Container(
                          width: 100,
                          alignment: Alignment.center,
                          child: const Text( "Places",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
                              )),
                        ),
                      ),
                    ),
                    // Hotels
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: PhysicalModel(
                        color: Colors.red.shade800,
                        borderRadius: BorderRadius.circular(8),
                        elevation: 10.0,
                        child: Container(
                          width: 100,
                          alignment: Alignment.center,
                          child: const Text( "Hotels",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
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
                  color: Colors.red,
                  shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1, 1)), ],
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
                return InkWell(
                  onTap: () => Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => PlaceDetails( place: dataList[index] ) 
                    ),
                  ),
                  child: Stack(
                    children: [
                      // the image in the grid
                      PhysicalModel(
                        color: Colors.red.shade800,
                        elevation: 8.0,
                        borderRadius: BorderRadius.circular(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network( 
                            dataList[index].cityImage, 
                            fit: BoxFit.cover, 
                            height: 200,
                            // color: Colors.orange.shade200,
                            // colorBlendMode: BlendMode.saturation,

                            // color: Colors.purple.shade200,
                            // color: Colors.red.shade200,
                            // color: Colors.orange.shade200,
                            // colorBlendMode: BlendMode.hue,
                                            
                            // color: Colors.orange.shade400,
                            // color: Colors.red.shade400,
                            // colorBlendMode: BlendMode.saturation,
                                            
                            // color: Colors.red.shade400,
                            // colorBlendMode: BlendMode.overlay,
                        
                          ),
                        ),
                      ),
                
                      // the text at the bottom (container with text)
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            // borderRadius: BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.circular(10)),
                            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(5)),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 3.0),
                              // color: Colors.white.withAlpha(160),
                              color: Colors.red.shade800.withAlpha(150),
                              child: Center(
                                child: Text( dataList[index].cityName, 
                                  style: const TextStyle(
                                      // color: Colors.red.shade800, 
                                      color: Colors.white, 
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
                                    ) 
                                  ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}


