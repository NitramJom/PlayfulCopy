import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://blog.hubspot.es/hubfs/Descarga%20de%20fondos%20para%20pa%CC%81ginas%20web.jpg'),
              fit: BoxFit.cover)),
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Inicio',
            style: GoogleFonts.shadowsIntoLightTwo(
                fontSize: 200, fontWeight: FontWeight.bold),
            //style: GoogleFonts.montserratAlternates(fontSize: 80,fontWeight: FontWeight.bold,),
          ),
        ),
      ),
    );
  }
}
