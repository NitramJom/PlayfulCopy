import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://i.picsum.photos/id/1073/5472/3648.jpg?hmac=xCDetU9pLnLGZopbvHOQOkQRhTiYwyrzWc0YyHPzp5Y'),
              fit: BoxFit.fill)),
      //color: Colors.purpleAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Location',
            style: GoogleFonts.montserratAlternates(
                fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
