import 'package:aspen_project/place_screen/place_screen.dart';
import 'package:aspen_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularItem extends StatelessWidget {
  final String title;
  final String rating;
  final String image;

  const PopularItem({super.key, required this.title, required this.rating, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, PlaceScreen.routeName);
      },
      child: Container(
        width: getPropScreenWidth(180),
        height: getPropScreenHeight(240),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color:Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.9,
            image: AssetImage(image)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: getPropScreenHeight(6), horizontal: getPropScreenWidth(12)),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4D5652),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                        title,style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w500,
                          fontSize: getPropScreenWidth(15),
                          color:  Colors.white
                        ),
                      ),
                    ),
                    SizedBox(height: getPropScreenHeight(10),),
                     Container(
                      padding: EdgeInsets.symmetric(vertical: getPropScreenHeight(6), horizontal: getPropScreenWidth(12)),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4D5652),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            width: getPropScreenWidth(20),
                            height: getPropScreenHeight(20),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            rating,
                            style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: getPropScreenWidth(12),
                              color:  Colors.white
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,

                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            SizedBox(height: getPropScreenHeight(10),)
          ],
        ),
      ),
    );
  }
}