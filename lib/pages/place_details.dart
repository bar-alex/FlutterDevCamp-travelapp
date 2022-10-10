import 'package:flutter/material.dart';
import 'package:flutterdevcamp_travelapp/models/data.dart';
import 'package:flutterdevcamp_travelapp/pages/attraction_details.dart';
import 'package:google_fonts/google_fonts.dart';



class PlaceDetails extends StatefulWidget {
  
  final Data place;
  
  const PlaceDetails({Key? key, required this.place}) : super(key: key);

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade800,
      
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
        title: Text("= ${widget.place.cityName} =",
          style: GoogleFonts.lobster(
            fontSize: 28,
            shadows: [ const Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
          ),
        )),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            // the image
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                // color: Colors.purple,
                border: Border.all(color: Colors.white),
                // borderRadius: BorderRadius.circular(5),
                // shape: BoxShape.circle,
              ),
              child: ClipRRect( 
                // borderRadius: BorderRadius.circular(5),
                child: Image.network( 
                  widget.place.cityImage, 
                  fit: BoxFit.cover, 
                  // height: 200,
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
                  frameBuilder: (BuildContext context, Widget child, int? frame,
                    bool wasSynchronouslyLoaded) {
                      if (wasSynchronouslyLoaded) {
                        return child;
                      }
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

            const SizedBox(height: 15),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Popular attractions", 
                // style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w600, 
                  color: Colors.white,
                  shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
                ),
                
              ),
            ),
            
            const SizedBox(height: 15),

            SizedBox(
              // height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    for ( Attraction attraction in widget.place.attractions )
                      InkWell(
                        onTap:() => Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (BuildContext context) => AttractionDetails( attraction: attraction ) 
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [

                              PhysicalModel(
                                color: Colors.red.shade800,
                                shape: BoxShape.circle,
                                elevation: 10.0,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(attraction.attractionImage,scale: 0.5),
                                  radius: 40.0,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Text( attraction.attractionName, 
                                  softWrap: true,
                                  style: const TextStyle(
                                    fontSize: 16, 
                                    fontWeight: FontWeight.w400, 
                                    color: Colors.white,
                                    shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              )
              // child: ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   shrinkWrap: true,
              //   itemCount: widget.place.attractions.length,
              //   itemBuilder: (BuildContext context, index) {
              //     return Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(50),
              //         child: Image.network(
              //           widget.place.attractions[index].attractionImage,
              //           height: 60,
              //           width: 60,
              //           fit: BoxFit.cover,
              //         )
              //       ),
              //     );
              // }),
            ),

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Information",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w600, 
                  color: Colors.white,
                  shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
                ), 
                // style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.place.description, 
                // style: const TextStyle(fontFamily: 'Arial', fontSize: 17, color: Colors.white),
                // style: GoogleFonts.notoSans(fontSize: 16, color: Colors.white),
                style: GoogleFonts.poppins(
                  fontSize: 18, 
                  color: Colors.white,
                  shadows: [ Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ],
                ),
                // style: GoogleFonts.sourceSans3(fontSize: 18, color: Colors.white),
              ),
            ), 

            const SizedBox(height: 15),

          ],
        ),
      ),
      // body: Column( 
      //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [

      //   ]
      // )
        
    );
  }
}
