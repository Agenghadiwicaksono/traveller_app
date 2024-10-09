import 'package:aspen_project/default_button.dart';
import 'package:aspen_project/place_screen/components/body.dart';
import 'package:aspen_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceScreen extends StatelessWidget {
  static String routeName = "/place";
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Body(),
        bottomNavigationBar: Container(
          height: getPropScreenHeight(80),
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Price",
                        style: GoogleFonts.getFont(
                          "Roboto Condensed",
                          fontWeight: FontWeight.bold,
                          fontSize: getPropScreenWidth(16),
                          color: const Color(0xFF232323)
                        )
                      ),
                    ),
                    Text(
                      "\$999",
                      style: GoogleFonts.getFont(
                        "Montserrat",
                        fontWeight: FontWeight.w700,
                        fontSize: getPropScreenWidth(24),
                        color: Colors.amber
                      )
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                padding:const EdgeInsets.all(15),
                child: DefaultButton(text: "Book Now", press: (){}),
              )), // tambahkan ini
            ],
          ),
        )
      ),
    );
  }
}