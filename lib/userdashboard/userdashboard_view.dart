import 'package:flutter/material.dart';
// import 'package:pet_app/screens/Event/event%20view/home_page.dart';
// import 'package:pet_app/screens/Event/pages/home_page.dart';
import 'package:pet_app/screens/Vaxs/add_vax.dart';
import 'package:pet_app/screens/introscreen_page.dart';
// import 'package:pet_app/screens/vaccination_screen.dart';
import 'package:pet_app/userdashboard/widgets/cardgradient.dart';

import '../Animal_shelter/form.dart';
// import '../screens/Event/pages/forms.dart';
// import '../screens/Event/pages/home_page.dart';
import '../screens/Healthrecord/healthrecord_view.dart';

// import '../screens/Event/event view/home_page.dart';

class UserDashboard extends StatelessWidget {
  static const routeName = '/userdashboard-screen';

  UserDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Column(children: [
      // Container(
      //   height: height / 3,
      //   margin: const EdgeInsets.only(top: 30),
      //   padding: const EdgeInsets.all(15),
      //   width: double.infinity,
      //   child: CardGradient(
      //     imageUrl: "syringe.png",
      //     title: "Nutrition",
      //     width: (width / 2) - 30,
      //     height: height / 3,
      //     firstColor: Colors.cyan,
      //     secondColor: Colors.cyan,
      //   ),
      // ),
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => addVaccine()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: CardGradient(
                imageUrl: "syringe.png",
                title: "Vaccine",
                height: (height / 4) - 30,
                width: (width / 2) - 30,
                firstColor: Colors.amber,
                secondColor: Colors.amber,
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => healthRecord()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: CardGradient(
                imageUrl: "medical-history.png",
                title: "Medical History",
                height: (height / 4) - 30,
                width: (width / 2) - 30,
                firstColor: Colors.deepPurple,
                secondColor: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpForm()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: CardGradient(
                imageUrl: "caduceus-symbol.png",
                title: "Book a Vet",
                height: (height / 4) - 30,
                width: (width / 2) - 30,
                firstColor: Colors.deepPurple,
                secondColor: Colors.deepPurple,
              ),
            ),
          ),
          const SizedBox(height: 75),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroScreenPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: CardGradient(
                imageUrl: "group.png",
                title: "Events Near You",
                height: (height / 4) - 30,
                width: (width / 2) - 30,
                firstColor: Colors.amber,
                secondColor: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpForm()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: CardGradient(
                imageUrl: "group.png",
                title: "                     Forum",
                height: (height / 4) - 30,
                width: (width) - 30,
                firstColor: Colors.green,
                secondColor: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 75),
        ],
      ),
    ]);
  }
}
