import 'package:aspen_project/size_config.dart';
import 'package:aspen_project/widgets/popular_item.dart';
import 'package:aspen_project/widgets/recomended_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget{
  const Body({super.key});


  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Column(
    children: [
      SizedBox(height: getPropScreenHeight(10),),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: getPropScreenWidth(15),
                  )
                ),
                Text(
                  "Traveller",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    color: Colors.orange,
                    fontSize: getPropScreenWidth(32),
                  )
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.location_solid,
                  color: Colors.orangeAccent,
                  size: getPropScreenWidth(16),
                ),
                SizedBox(width: getPropScreenWidth(6),),
                Text(
                  "Bogor, Indonesia",
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: getPropScreenWidth(12),
                    color: const Color(0xFF606060)
                  )
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.orangeAccent,
                  size: getPropScreenHeight(18),
                )
              ],
            )
          ],
        ),
      ),
      Padding(padding: EdgeInsets.symmetric(
        vertical: getPropScreenHeight(15),
        horizontal: getPropScreenWidth(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: getPropScreenHeight(5),horizontal: getPropScreenWidth(10)),
        decoration: BoxDecoration(
          color: const Color(0xFFF3F8FE),
          borderRadius: BorderRadius.circular(24),
        ),
        child: const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 13),
            hintText: "Find places to visit",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search)
          ),
        )
      ),
      ),
      TabBar(
        controller: _tabController,
        indicatorColor: Colors.orangeAccent,
        labelColor: Colors.orangeAccent,
        unselectedLabelColor: Color(0xFFB8B8B8),
        labelStyle: GoogleFonts.robotoCondensed(
          fontWeight: FontWeight.w700,
          fontSize: getPropScreenWidth(16)
        ),
        unselectedLabelStyle: GoogleFonts.robotoCondensed(
          fontWeight: FontWeight.w400,
          fontSize: getPropScreenWidth(16)
        ),
        tabs: const [
          Tab(text: "Location"),
          Tab(text: "Hotels"),
          Tab(text: "Foods"),
          Tab(text: "Adventure"),
        ],
      ),
      SizedBox(height: getPropScreenHeight(20),),
      Flexible(
        child: TabBarView(
          controller: _tabController,
          children: [
            buildTabContent("Location"),
            buildTabContent("Hotels"),
            buildTabContent("Foods"),
            buildTabContent("Advanture"),
          ],
        ),
      )
    ],
          );
  }

  Widget buildTabContent(String tab){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: getPropScreenWidth(18),
                  color: const Color(0xFF232323)
                ),
              ),
              Row(
                children: [
                  Text(
                    "See all",
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.w500,
                      fontSize: getPropScreenWidth(12),
                      color: Colors.orangeAccent, 
                    ),
                  ),
                  Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.orangeAccent,
                      size: getPropScreenHeight(18),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: getPropScreenHeight(12),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const PopularItem(
                  title: "Alley Palace", 
                  rating:"4.1",
                  image: "assets/img/card-1.png"
                ),
                SizedBox(width: getPropScreenWidth(16),),
                const PopularItem(
                  title: "Condures Palace", 
                  rating:"4.9",
                  image: "assets/img/card-2.png"
                ),
              ],
            ),
          ),
          SizedBox(height: getPropScreenHeight(32),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: getPropScreenWidth(18),
                  color: const Color(0xFF232323)
                ),
              ),
              Row(
                children: [
                  Text(
                    "See all",
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.w500,
                      fontSize: getPropScreenWidth(12),
                      color: Colors.orangeAccent, 
                    ),
                  ),
                  Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.orangeAccent,
                      size: getPropScreenHeight(18),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: getPropScreenHeight(16),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const RecomendedCard(
                  title: "Explore Aspen",
                  duration: "4N/5D", 
                  deal:"Hot Deal",
                  image: "assets/img/Rectangle 992.png"
                ),
                SizedBox(width: getPropScreenWidth(16),),
                const RecomendedCard(
                  title: "Luxurious Aspen", 
                  duration: "3N/5D", 
                  deal:"New Deal",
                  image: "assets/img/Rectangle 996.png"
                ),
                SizedBox(width: getPropScreenWidth(16),),
                const RecomendedCard(
                  title: "Explore Aspen",
                  duration: "4N/5D", 
                  deal:"Hot Deal",
                  image: "assets/img/Rectangle 992.png"
                ),
              ],
            ),
          ),
          SizedBox(height: getPropScreenHeight(50),),
        ],
                ),
      ),
    );
  }
}