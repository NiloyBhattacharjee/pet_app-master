// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:pet_app/screens/Profile_pet/pet_profile.dart';
// import 'package:pet_app/utils/color.dart';

// import '../widget/appbar_widget.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//   late PageController _pageController;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // ?appBar: buildAppBar(context),
//       body: SizedBox.expand(
//         child: PageView(
//           controller: _pageController,
//           onPageChanged: (index) {
//             setState(() => _currentIndex = index);
//           },
//           children: <Widget>[
//             Container(),
//             Container(
//               child: GestureDetector(
//                 onHorizontalDragUpdate: (dragUpdateDetails) {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: ((context) => ProfilePage())));
//                 },
//               ),
//             ),
//             Container(
//               color: primaryColor,
//             ),
//             Container(
//               color: blueColor,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
