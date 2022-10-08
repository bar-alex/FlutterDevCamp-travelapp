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
          centerTitle: true,
          title: Text(
            title,
            style: GoogleFonts.lobster(fontSize: 28),
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
                  children: [
                    // Attraction
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
                                fontSize: 17,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    // Places
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
                                fontSize: 17,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    // Hotels
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
                                fontSize: 17,
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
                return InkWell(
                  onTap: () => Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => 
                        PlaceDetails( place: dataList[index] ) 
                    ),
                  ),
                  child: Stack(
                    children: [
                      // the image
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Colors.purple,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                          // shape: BoxShape.circle,
                        ),
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
                                            
                            color: Colors.orange.shade400,
                            // color: Colors.red.shade400,
                            colorBlendMode: BlendMode.saturation,
                                            
                            // color: Colors.red.shade400,
                            // colorBlendMode: BlendMode.overlay,
                            frameBuilder: (BuildContext context, Widget child, int? frame,
                                bool wasSynchronouslyLoaded) {
                              // if (wasSynchronouslyLoaded) {
                              //   return child;
                              // }
                              return AnimatedOpacity(
                                opacity: frame == null ? 0 : 1,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                                child: child,
                              );
                            },
                        
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
                              color: Colors.white.withAlpha(160),
                              child: Center(
                                child: Text( dataList[index].cityName, 
                                  style: TextStyle(
                                      color: Colors.red.shade800, 
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
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


