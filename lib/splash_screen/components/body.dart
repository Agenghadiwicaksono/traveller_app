import 'package:aspen_project/default_button.dart';
import 'package:aspen_project/home/home_screen.dart';
import 'package:aspen_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 93, 23, 48),
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/img/mountain.png"),
          fit: BoxFit.cover,
          opacity: 0.5,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Traveler",
              style: TextStyle(
                fontFamily: "hiatus_2",
                fontSize: getPropScreenWidth(90),
                fontWeight: FontWeight.normal,
                color: Colors.orange
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.getFont(
                        "Montserrat",
                        fontSize: getPropScreenWidth(40),
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                      children: [
                        TextSpan(
                          text: "Search Your",
                          style: GoogleFonts.getFont(
                            "Montserrat",
                            fontSize: getPropScreenWidth(24),
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            height: getPropScreenHeight(1.3)
                          ),
                        ),
                        const TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Greatest Vacation",
                          style: GoogleFonts.getFont(
                            "Montserrat",
                            fontSize: getPropScreenWidth(40),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            height: getPropScreenHeight(1.3)
                          ),
                        )
                      ],
                    )
                  )
                ),
              ),
              SizedBox(height: getPropScreenHeight(20),),
              DefaultButton(
                text: "Explore", 
                press: (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              )
            ],
          )
        ],
      ),
    );
  }
}