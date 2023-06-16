import 'package:ecommerceapp/widgets/categoryCard.dart';
import 'package:ecommerceapp/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class searchPage extends StatelessWidget {
  searchPage({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 23),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Color(0xff232327),
                        ),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            icon: Image.asset("images/search.png",
                                color: Colors.white),
                            // contentPadding: EdgeInsets.all(15),
                            border: InputBorder.none,
                            hintText: "Search...",
                            hintStyle: TextStyle(
                              color: Color(0xffAFAFAF),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff232327),
                        ),
                        child: Image.asset("images/heart.png",
                            color: Colors.white),
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 18,
                    mainAxisExtent: 220,
                  ),
                  children: [
                    categoryCard(
                      image: "images/jam.png",
                      name: "Electronics",
                      ontap: () {},
                    ),
                    categoryCard(
                      image: "images/bunga.png",
                      name: "Flower",
                      ontap: () {},
                    ),
                    categoryCard(
                      image: "images/musik.png",
                      name: "Musics",
                      ontap: () {},
                    ),
                    categoryCard(
                      image: "images/laptop2.png",
                      name: "Digital Service",
                      ontap: () {},
                    ),
                    categoryCard(
                      image: "images/kamar.png",
                      name: "Digital Service",
                      ontap: () {},
                    ),
                    categoryCard(
                      image: "images/jam.png",
                      name: "Electronics",
                      ontap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
