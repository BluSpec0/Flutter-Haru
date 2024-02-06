import 'package:flutter/material.dart';
import 'package:haru_warehouse/screen/home.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameContoller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SizedBox(
              height: height / 5, child: Image.asset('images/BgLogin.png')),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                  left: 50,
                  right: 50,
                  top: 140,
                ),
                child: Container(
                  height: height / 40,
                  child: Image.asset('images/TextLogin.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                  left: 50,
                  right: 50,
                  top: 5,
                ),
                child: Container(
                  height: height / 3,
                  child: Image.asset('images/LoginImage.png'),
                ),
              ),
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
                          padding: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: TextFormField(
                            controller: _usernameContoller,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: 'Enter username',
                                hintStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                                fillColor:
                                    const Color(0xffFFFFFF).withOpacity(0.4),
                                filled: true,
                                contentPadding: const EdgeInsets.fromLTRB(
                                    20.0,
                                    16.0,
                                    20.0,
                                    16.0), // Adjust left and right padding as neededcontentPadding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0), // Adjust left and right padding as needed
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffFF0000)),
                                    borderRadius: BorderRadius.circular(35)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xffFF0000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(35))),
                          ),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: 'Enter password',
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                              fillColor:
                                  const Color(0xffFFFFFF).withOpacity(0.4),
                              filled: true,
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20.0,
                                  16.0,
                                  20.0,
                                  16.0), // Adjust left and right padding as needed
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffFF0000)),
                                  borderRadius: BorderRadius.circular(35)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffFF0000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(35))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 70,
                          ),
                          child: Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: const Color(0xffFF0000),
                                borderRadius: BorderRadius.circular(35)),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ),
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
