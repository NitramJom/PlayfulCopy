import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://blog.hubspot.es/hubfs/Descarga%20de%20fondos%20para%20pa%CC%81ginas%20web.jpg'),
              fit: BoxFit.cover)),
      //color: Color.fromARGB(255, 155, 130, 137),
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Home',
            style: GoogleFonts.montserratAlternates(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
