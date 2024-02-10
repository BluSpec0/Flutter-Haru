import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:haru_warehouse/screen/home.dart';

// ignore: must_be_immutable
class History extends StatelessWidget {
  final TextEditingController _searchContoller = TextEditingController();

  History({super.key});

  color(index) {
    if (index % 2 == 0) {
      return const Color(0xffFFFFFF);
    } else {
      return const Color(0xffFFFFFF);
    }
  }

  text(index) {
    if (index % 2 == 0) {
      return '12-02-2022';
    } else {
      return '12-01-2022';
    }
  }

  img(index) {
    if (index % 2 == 0) {
      return Image.asset('images/Account.png');
    } else {
      return Image.asset('images/Account.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          toolbarHeight: 75,
          iconTheme: const IconThemeData(
            color: Color(0xffFF0000), // Change this color to the one you want
            size: 30,
          ),
          backgroundColor: Colors.white,
          title: const Row(
            children: [
              Text(
                'History',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF0303),
                    fontSize: 35),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
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
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffFF0000),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(35)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, bottom: 494, left: 20, right: 20),
                                child: AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  content: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 250,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: color(index + 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: ListView(
                                            children: [
                                              Text(
                                                text(index + 1),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xffFF0000)),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                '4 T-Shirt berhasil terjual',
                                                style: TextStyle(fontSize: 16),
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 2, left: 8, right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    offset: Offset(0, 5),
                                    blurRadius: 8),
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    offset: Offset(0, 4),
                                    blurRadius: 7),
                              ],
                              color: color(index + 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).width / 6,
                                width: MediaQuery.sizeOf(context).width / 6,
                                child: img(index + 1),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        text(index + 1),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xffFF0000)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          '4 T-Shirt berhasil terjual',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xffA8A8A8)),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ));
  }
}
