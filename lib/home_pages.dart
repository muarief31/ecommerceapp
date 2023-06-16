import 'package:ecommerceapp/components.dart/featured.dart';
import 'package:ecommerceapp/repository/reposiitory.dart';
import 'package:ecommerceapp/widgets/productCard.dart';
import 'package:ecommerceapp/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/model.dart';

class homePages extends StatefulWidget {
  homePages({super.key});

  @override
  State<homePages> createState() => _homePagesState();
}

class _homePagesState extends State<homePages> {
  final controller = TextEditingController();

  List<Product> listProduct = [];
  Repository repository = Repository();

  getData() async {
    listProduct = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(26),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Muhammad Arif",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.normal),
                    ),
                    Container(
                      height: 61,
                      width: 61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff232327),
                      ),
                      child: Center(
                        child: Image.asset("images/troli.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: MySearch(
                    controller: controller,
                    hintText: "search",
                    obscuretext: false,
                    Widget1: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Image.asset("images/promo.png"),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Featured",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 220,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (contex, index) {
                          return featured(
                            image: listProduct[index].image,
                            text1: listProduct[index].name,
                            text2: listProduct[index].price,
                            iconimg: (Icons.favorite),
                          );
                        },
                        itemCount: listProduct.length),
                  ),
                ),
                SizedBox(height: 21),
                Row(
                  children: [
                    Text(
                      "All",
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                productCard(
                  pimage: "images/headphone.png",
                  pname: "Snopy Headphone",
                  description: "Snopy SN- BT96 Pretty Back Bluetooth Headphone",
                  harga: "149.999-,",
                  ontap: () {},
                ),
                SizedBox(height: 10),
                productCard(
                  pimage: "images/headphone.png",
                  pname: "Snopy Headphone",
                  description: "Snopy SN- BT96 Pretty Back Bluetooth Headphone",
                  harga: "149.999-,",
                  ontap: () {},
                ),
                SizedBox(height: 10),
                productCard(
                  pimage: "images/headphone.png",
                  pname: "Snopy Headphone",
                  description: "Snopy SN- BT96 Pretty Back Bluetooth Headphone",
                  harga: "149.999-,",
                  ontap: () {},
                ),
                SizedBox(height: 10),
                productCard(
                  pimage: "images/headphone.png",
                  pname: "Snopy Headphone",
                  description: "Snopy SN- BT96 Pretty Back Bluetooth Headphone",
                  harga: "149.999-,",
                  ontap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
