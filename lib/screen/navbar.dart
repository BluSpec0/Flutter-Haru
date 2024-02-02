// import 'package:flutter/material.dart';
// // import 'package:sobatsehat/screen/bnb_notif.dart';
// // import 'package:sobatsehat/screen/bnb_setting.dart';

// import 'home.dart';

// class Navbar extends StatefulWidget {
//   const Navbar({super.key});

//   @override
//   State<Navbar> createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int currentIndex = 0;

//   void ontap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> body = [Home(), Notif(), Setting()];
//     return Scaffold(
//       body: body[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Color(0xff22CF33),
//         unselectedItemColor: Color(0xff22CF33).withOpacity(0.3),
//         onTap: ontap,
//         currentIndex: currentIndex,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications_none_rounded), label: 'Notif'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle_outlined), label: 'Setting'),
//         ],
//       ),
//     );
//   }
// }
