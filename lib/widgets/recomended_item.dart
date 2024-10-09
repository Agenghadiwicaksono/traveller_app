import 'package:aspen_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecomendedCard extends StatelessWidget {
  final String title;
  final String duration;
  final String deal;
  final String image;

  const RecomendedCard({super.key, required this.title, required this.duration, required this.deal, required this.image});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: getPropScreenWidth(175),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFF4F4F4),
        ),
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(colors: [
          Color(0xFFFFFFFF),
          Color(0xFFF5F5F5)
        ]),
        boxShadow: const [
          BoxShadow(
            color: Color(0x2B97A0B2),
            offset: Offset(0, 4),
            blurRadius: 10
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 8, 
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A544F),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  padding: EdgeInsets.symmetric(vertical: getPropScreenHeight(2), horizontal: getPropScreenWidth(4)),
                  child: Text(
                    duration,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: getPropScreenWidth(12),
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: getPropScreenWidth(18),
                      color: const Color(0xFF232323),
                    ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10), vertical: getPropScreenHeight(5)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/shape.svg",
                  height: getPropScreenHeight(12),
                  width: getPropScreenWidth(12),
                ),
                SizedBox(width: getPropScreenWidth(5.5),),
                Text(
                  deal,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: getPropScreenWidth(14),
                    color: const Color(0xFF3A544F),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
