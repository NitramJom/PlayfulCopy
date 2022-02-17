import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://i.picsum.photos/id/1003/1181/1772.jpg?hmac=oN9fHMXiqe9Zq2RM6XT-RVZkojgPnECWwyEF1RvvTZk'),
              repeat: ImageRepeat.repeatX)),
      //color: Colors.deepPurple,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Pricing',
            style: GoogleFonts.montserratAlternates(
                fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
