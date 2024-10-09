import 'package:aspen_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/img/card-2.png"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(getPropScreenWidth(15)),
                          padding: EdgeInsets.all(getPropScreenWidth(10)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.orangeAccent,
                            size: getPropScreenWidth(20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(getPropScreenWidth(8)),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 4,
                        )
                      ]
                    ),
                    child: IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: getPropScreenWidth(30),
                      ),
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: getPropScreenHeight(20),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(5), vertical: getPropScreenHeight(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Coeurdes Alpes",
                    style: GoogleFonts.getFont(
                      "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: getPropScreenWidth(28),
                      color: const Color(0xFF232323)
                    )
                  ),
                  Text(
                    "Show Maps",
                    style: GoogleFonts.getFont(
                      "Roboto Condensed",
                      fontWeight: FontWeight.w700,
                      fontSize: getPropScreenWidth(14),
                      color: Colors.orangeAccent
                    )
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(width: getPropScreenWidth(5),),
                Text(
                  "4.5 (999+ Reviews )",
                  style: GoogleFonts.getFont(
                    "Roboto Condensed",
                    fontWeight: FontWeight.w400,
                    fontSize: getPropScreenWidth(12),
                    color: const Color(0xFF606060)
                  )
                )
              ],
            ),
            SizedBox(height: getPropScreenHeight(15),),
            Text(
              "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
              style: GoogleFonts.getFont(
                "Roboto Condensed",
                fontWeight: FontWeight.w500,
                fontSize: getPropScreenWidth(14),
                color: const Color(0xFF606060)
              )
            ),
            SizedBox(height: getPropScreenHeight(25),),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Facilities",
                    style: GoogleFonts.getFont(
                      "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: getPropScreenWidth(18),
                      color: const Color(0xFF232323)
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCard(
                        assetPath:"assets/icons/Vector-wifi.svg",
                        text:"Wifi"
                      ),
                      _buildCard(
                        assetPath:"assets/icons/Vector-food.svg",
                        text:"Dinner"
                      ),
                      _buildCard(
                        assetPath:"assets/icons/Vectorbath.svg",
                        text:"Tub"
                      ),
                      _buildCard(
                        assetPath:"assets/icons/Vectorwater.svg",
                        text:"Pool"
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    }
  }
  Widget _buildCard({required String assetPath, required String text}){
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(5)),
        padding: const EdgeInsets.fromLTRB(0, 14, 0, 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(13, 163, 119, 16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: getPropScreenWidth(30),
              height: getPropScreenHeight(28),
              child: SvgPicture.asset(
                assetPath,
                color: Colors.orangeAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1.3),
              child: Text(
                text,
                style: GoogleFonts.getFont(
                  "Roboto Condensed",
                  fontWeight: FontWeight.w500,
                  fontSize: getPropScreenWidth(14),
                  color: Colors.orangeAccent
                )
              ),
            )
          ],
        )
      )
    );
  }