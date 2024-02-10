// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';
import 'package:haru_warehouse/screen/detailproduct.dart';

// ignore: must_be_immutable
class Product extends StatelessWidget {
  final TextEditingController _searchContoller = TextEditingController();

  Product({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFF0000),
        elevation: 8, // Set the elevation to control the drop shadow
        shadowColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Fahri Azar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detailproduct(),
              ),
            );
          },
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50), // Adjust the radius as needed
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xffFF0000),
            size: 40,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: 275,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 7),
                          blurRadius: 2)
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: const Color(0xffFF0000)),
              ),
              Container(
                height: height / 5,
                alignment: Alignment.bottomRight,
                child: Image.asset('images/Bghome.png'),
              ),
            ],
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  left: 40,
                  right: 40,
                  top: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: 145,
                    child: Image.asset('images/tshirt.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 40, left: 70, right: 70),
                child: TextField(
                  controller: _searchContoller,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                      hintText: 'Search Here',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffC9C1C1),
                      ),
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 40,
                        color: Color(0xffFF0000),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffFF0000)),
                          borderRadius: BorderRadius.circular(25)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2,
                        ),
                      ],
                      color: const Color(0xffFF0000),
                    ),
                    child: const Text(
                      'Kode Barang',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFF0000)),
                    child: const Text(
                      'Nama Barang',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFF0000)),
                    child: const Text(
                      'Jumlah',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFF0000)),
                    child: const Text(
                      'Actions',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2,
                        ),
                      ],
                      color: const Color(0xffFFFFFF),
                    ),
                    child: const Text(
                      '0001',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFFFFFF)),
                    child: const Text(
                      'Kaos JKT48',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFFFFFF)),
                    child: const Text(
                      '48',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailproduct(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(-2, 4),
                            blurRadius: 2,
                          ),
                        ],
                        color: const Color(0xffFF0000),
                      ),
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2,
                        ),
                      ],
                      color: const Color(0xffFFFFFF),
                    ),
                    child: const Text(
                      '0002',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFFFFFF)),
                    child: const Text(
                      'Kaos Jogja',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFFFFFF)),
                    child: const Text(
                      '50',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailproduct(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(-2, 4),
                            blurRadius: 2,
                          ),
                        ],
                        color: const Color(0xffFF0000),
                      ),
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2,
                        ),
                      ],
                      color: const Color(0xffFFFFFF),
                    ),
                    child: const Text(
                      '0003',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFFFFFF)),
                    child: const Text(
                      'Kaos Partai',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(-2, 4),
                          blurRadius: 2)
                    ], color: const Color(0xffFFFFFF)),
                    child: const Text(
                      '50',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailproduct(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(-2, 4),
                            blurRadius: 2,
                          ),
                        ],
                        color: const Color(0xffFF0000),
                      ),
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
