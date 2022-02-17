import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String url1 =
    'https://i.picsum.photos/id/1055/5472/3648.jpg?hmac=1c293cGVlNouNQsjxT8y3nsYO-7qLCaOBEGvih0ibEU';
double numero = 8.0;

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://i.picsum.photos/id/1055/5472/3648.jpg?hmac=1c293cGVlNouNQsjxT8y3nsYO-7qLCaOBEGvih0ibEU'),
              repeat: ImageRepeat.repeatY),
          color: Color.fromARGB(255, 153, 124, 124)),
      //color: Colors.purple,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Contact',
            style: GoogleFonts.montserratAlternates(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                shadows: <Shadow>[
                  Shadow(
                      color: Colors.black,
                      offset: Offset(10.0, 10.0),
                      blurRadius: 3.0)
                ]),
          ),
        ),
      ),
    );
  }
}
