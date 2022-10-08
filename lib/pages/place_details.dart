import 'package:flutter/material.dart';
import 'package:flutterdevcamp_travelapp/models/data.dart';
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
        title: Text(
          "= ${widget.place.cityName} =",
          style: GoogleFonts.lobster(fontSize: 28),
        )),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Image.network( widget.place.cityImage, 
              color: Colors.green[700],
              colorBlendMode: BlendMode.colorBurn,
            ),
            
            const SizedBox(height: 15),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Popular attractions", 
                \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\zzzzzzzzzzzzz// style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: const Color.fromARGB(255, 59, 59, 61),),
                
              ),
            ),
            
            const SizedBox(height: 15),

            Row(),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white), 
                // style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.place.description, 
                // style: const TextStyle(fontFamily: 'Arial', fontSize: 17, color: Colors.white),
                // style: GoogleFonts.notoSans(fontSize: 16, color: Colors.white),
                style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                // style: GoogleFonts.sourceSans3(fontSize: 18, color: Colors.white),
              ),
            ), 

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
