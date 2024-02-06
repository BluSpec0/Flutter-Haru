import 'package:flutter/material.dart';
import 'package:haru_warehouse/screen/history.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
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
                padding: const EdgeInsets.all(15),
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
              // GridView.builder(
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   itemCount: 7,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     mainAxisSpacing: 10,
              //     crossAxisSpacing: 10,
              //     childAspectRatio: 5 / 4.5,
              //   ),
              //   itemBuilder: (context, index) {
              //     var idx = index + 1;
              //     return InkWell(
              //       // onTap: () {
              //       //   Navigator.push(
              //       //       context,
              //       //       MaterialPageRoute(
              //       //           builder: (context) => Produk(
              //       //                 id: idx.toString(),
              //       //               )));
              //       // },
              //       child: Stack(
              //         alignment: Alignment.bottomCenter,
              //         children: [
              //           Container(
              //               decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(20),
              //                   color: Colors.grey),
              //               child: Image.asset('images/p${index + 1}.png')),
              //           LayoutBuilder(builder: (context, constraint) {
              //             return Container(
              //               height: constraint.maxHeight / 2.4,
              //               width: constraint.maxWidth,
              //               decoration: BoxDecoration(
              //                   color: Color(0xffE2E2E2).withOpacity(0.8),
              //                   borderRadius: BorderRadius.only(
              //                       bottomLeft: Radius.circular(20),
              //                       bottomRight: Radius.circular(20))),
              //               child: Padding(
              //                 padding: const EdgeInsets.all(10),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     Text(
              //                       'Rp.${index + 1}00.000,-',
              //                       style: TextStyle(
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: 16),
              //                     ),
              //                     produk(index + 1)
              //                   ],
              //                 ),
              //               ),
              //             );
              //           })
              //         ],
              //       ),
              //     );
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  right: 35,
                  top: 35,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => History(),
                                        ),
                                      );
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xffFF0000),
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
