import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class featured extends StatelessWidget {
  featured(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.iconimg});
  String image;
  String text1;
  String text2;
  IconData? iconimg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff232327),
      ),
      height: 210,
      width: 154,
      child: Column(
        children: [
          Image.network(image),
          Container(
            padding: EdgeInsets.only(left: 18, top: 5),
            child: Row(
              children: [
                Text(text1,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(left: 18, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text2,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  iconimg,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
