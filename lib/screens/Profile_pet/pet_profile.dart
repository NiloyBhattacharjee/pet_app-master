// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:pet_app/model/user.dart';
// import 'package:pet_app/utils/user_preferences.dart';
// import 'package:pet_app/widget/appbar_widget.dart';
// import 'package:pet_app/widget/button_widget.dart';
// import 'package:pet_app/widget/numbers_widget.dart';
// import 'package:pet_app/widget/profile_widget.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     final user = UserPreferences.myUser;

//     return Scaffold(
//       appBar: buildAppBar(context),
//       body: ListView(
//         physics: BouncingScrollPhysics(),
//         children: [
//           ProfileWidget(
//             imagePath: user.imagePath,
//             onClicked: () async {},
//           ),
//           const SizedBox(height: 24),
//           buildName(user),
//           const SizedBox(height: 24),
//           Center(child: buildUpgradeButton()),
//           const SizedBox(height: 24),
//           NumbersWidget(),
//           const SizedBox(height: 48),
//           SizedBox(
//             height: 50,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 child: GestureDetector(
//                     child: Image.asset("assets/syringe.png"),
//                     onTap: () {
//                       showModalBottomSheet(
//                         context: context,
//                         isScrollControlled: true,
//                         backgroundColor: Colors.transparent,
//                         builder: (context) => Container(
//                           height: MediaQuery.of(context).size.height * 0.75,
//                           decoration: new BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: new BorderRadius.only(
//                               topLeft: const Radius.circular(25.0),
//                               topRight: const Radius.circular(25.0),
//                             ),
//                           ),
//                           child: Center(
//                               child: Container(
//                             child: SfCalendar(
//                               view: CalendarView.schedule,
//                               initialSelectedDate: DateTime.now(),
//                             ),
//                           )),
//                         ),
//                       );
//                     }),
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 81, 177, 221),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10.0),
//                         bottomLeft: Radius.circular(10.0),
//                         bottomRight: Radius.circular(10.0),
//                         topRight: Radius.circular(10.0)),
//                     border: Border.all(
//                       color: Color.fromARGB(255, 119, 52, 241),
//                       width: 5,
//                     )),
//               ),
//               Container(
//                 child: Image.asset("assets/medical-history.png"),
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 81, 177, 221),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10.0),
//                         bottomLeft: Radius.circular(10.0),
//                         bottomRight: Radius.circular(10.0),
//                         topRight: Radius.circular(10.0)),
//                     border: Border.all(
//                       color: Color.fromARGB(255, 119, 52, 241),
//                       width: 5,
//                     )),
//               ),
//               Container(
//                 child: Image.asset("assets/caduceus-symbol.png"),
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 81, 177, 221),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10.0),
//                         bottomLeft: Radius.circular(10.0),
//                         bottomRight: Radius.circular(10.0),
//                         topRight: Radius.circular(10.0)),
//                     border: Border.all(
//                       color: Color.fromARGB(255, 119, 52, 241),
//                       width: 5,
//                     )),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   Widget buildName(User user) => Column(
//         children: [
//           Text(
//             user.name,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//           ),
//           const SizedBox(height: 4),
//         ],
//       );

//   Widget buildUpgradeButton() => ButtonWidget(
//         text: 'View Pet Details',
//         onClicked: () {},
//       );
// }
