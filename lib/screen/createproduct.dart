// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Createproduct extends StatelessWidget {
  final TextEditingController _codeContoller = TextEditingController();
  final TextEditingController _nameContoller = TextEditingController();
  final TextEditingController _dateContoller = TextEditingController();
  final TextEditingController _priceContoller = TextEditingController();
  final TextEditingController _sumContoller = TextEditingController();
  Createproduct({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 65, left: 20),
        child: Container(
          alignment: Alignment.topLeft,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xffFFFFFF),
              size: 30,
            ),
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
                height: 305,
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
            ],
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    'Tambah Produk',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  left: 40,
                  right: 40,
                  top: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: 208,
                    child: Image.asset('images/tshirt3.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(-2, 3),
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(2, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2.5),
                    child: TextField(
                      controller: _codeContoller,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText:
                            'Insert Product Code', // Adjust the hint text according to your preference
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC9C1C1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        'Nama Barang',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(-2, 3),
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(2, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2.5),
                    child: TextField(
                      controller: _nameContoller,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText:
                            'Insert Product Name', // Adjust the hint text according to your preference
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC9C1C1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        'Tanggal Dibuat',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(-2, 3),
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(2, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2.5),
                    child: TextField(
                      controller: _dateContoller,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText:
                            'Insert Entry Date', // Adjust the hint text according to your preference
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC9C1C1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        'Harga',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(-2, 3),
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(2, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2.5),
                    child: TextField(
                      controller: _priceContoller,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText:
                            'Insert Product Price', // Adjust the hint text according to your preference
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC9C1C1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        'Jumlah',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(-2, 3),
                        blurRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(2, 0),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2.5),
                    child: TextField(
                      controller: _sumContoller,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText:
                            'Insert Product Amount', // Adjust the hint text according to your preference
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC9C1C1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 122,
                        height: 46,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: const Offset(-2, 4),
                                blurRadius: 2,
                              ),
                            ],
                            color: const Color(0xffFF0000),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
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
