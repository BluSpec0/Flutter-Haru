// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Addproduct extends StatelessWidget {
  final TextEditingController _searchContoller = TextEditingController();

  Addproduct({super.key});

  produk(index) {
    if (index == 1) {
      return const Text('T-Shirt');
    } else if (index == 2) {
      return const Text('Hoodie');
    } else if (index == 3) {
      return const Text('LongSleve');
    } else if (index == 4) {
      return const Text('T-Shirt');
    } else if (index == 5) {
      return const Text('Hoodie');
    } else if (index == 6) {
      return const Text('LongSleve');
    } else if (index == 7) {
      return const Text('T-Shirt');
    } else if (index == 8) {
      return const Text('Hoodie');
    } else if (index == 9) {
      return const Text('LongSleve');
    } else if (index == 10) {
      return const Text('T-Shirt');
    } else if (index == 11) {
      return const Text('Hoodie');
    } else if (index == 12) {
      return const Text('LongSleve');
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
        padding: const EdgeInsets.only(top: 120, left: 20),
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
                height: 205,
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
                  child: Image.asset('images/addtext.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _searchContoller,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
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
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  var idx = index + 1;
                  return InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0, 10),
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: 105,
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 10, left: 10, bottom: 25),
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
                              padding: const EdgeInsets.only(bottom: 3.5),
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
