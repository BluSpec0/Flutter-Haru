// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:haru_warehouse/screen/history.dart';
import 'package:haru_warehouse/screen/addproduct.dart';
import 'package:haru_warehouse/screen/product.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  final TextEditingController _searchContoller = TextEditingController();

  Home({super.key});

  produk(index) {
    if (index == 1) {
      return const Text('T-Shirt');
    } else if (index == 2) {
      return const Text('Hoodie');
    } else if (index == 3) {
      return const Text('LongSleve');
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Addproduct(),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFF0000),
        elevation: 8, // Set the elevation to control the drop shadow
        shadowColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
              child: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
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
                height: 270,
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
                child: Container(
                  alignment: Alignment.topCenter,
                  height: height / 8,
                  child: Image.asset('images/hometext.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _searchContoller,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      hintText: 'Search Here',
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffC9C1C1),
                      ),
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xffFF0000),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffFF0000)),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 5 / 4.5,
                ),
                itemBuilder: (context, index) {
                  var idx = index + 1;
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Product(),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0.5, 12),
                                blurRadius: 8,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(-0.5, 0),
                                blurRadius: 7,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: 165,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 25, right: 25, left: 25, bottom: 35),
                            child: Image.asset('images/p${index + 1}.png'),
                          ),
                        ),
                        LayoutBuilder(builder: (context, constraint) {
                          return Container(
                            height: constraint.maxHeight / 2.4,
                            width: constraint.maxWidth,
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ),
                          );
                        }),
                        // Add the text widget here
                        Positioned(
                          child: Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: produk(index + 1)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
