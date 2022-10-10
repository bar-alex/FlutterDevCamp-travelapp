import 'package:flutter/material.dart';
import 'package:flutterdevcamp_travelapp/models/data.dart';
import 'package:google_fonts/google_fonts.dart';


class AttractionDetails extends StatefulWidget {
  final Attraction attraction;
  
  const AttractionDetails({super.key, required this.attraction});

  @override
  State<AttractionDetails> createState() => _AttractionDetailsState();
}

class _AttractionDetailsState extends State<AttractionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade800,

      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        centerTitle: true,
        title: Text("= ${widget.attraction.attractionName} =",
          style: GoogleFonts.lobster(
            fontSize: 28,
            shadows: [ const Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ]
          ),
        )),

      body: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      
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
                    widget.attraction.attractionImage , 
                    fit: BoxFit.cover, 
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
                
                  ),
                ),
              ),
      
              const SizedBox(height: 15),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(widget.attraction.attractionDescr, 
                  // style: const TextStyle(fontFamily: 'Arial', fontSize: 17, color: Colors.white),
                  // style: GoogleFonts.notoSans(fontSize: 16, color: Colors.white),
                  style: GoogleFonts.poppins(
                    fontSize: 18, 
                    color: Colors.white,
                    shadows: [ const Shadow(blurRadius: 3.0, offset: Offset(1.5, 1.5)), ],
                  ),
                  // style: GoogleFonts.sourceSans3(fontSize: 18, color: Colors.white),
                ),
              ), 
      
              const SizedBox(height: 15),
      
          ],
        ),
      ),

    );
  }
}