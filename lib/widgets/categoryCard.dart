import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryCard extends StatelessWidget {
  categoryCard({
    required this.image,
    required this.name,
    required this.ontap,
  });

  String image;
  String name;

  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 196.23,
          height: 239.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff232327),
          ),
          child: Column(
            children: [
              Image.asset(image),
              SizedBox(height: 13),
              Text(
                name,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
