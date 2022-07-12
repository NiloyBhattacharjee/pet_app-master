import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/controllers/user_controller.dart';
import 'package:provider/provider.dart';

import '../../model/user.dart';
import '../../userdashboard/userdashboard_view.dart';
import '../../userprofile/userprofile_view.dart';
import '../login/login_view.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex = 0;

  final List<Widget> _widgets = [
    UserDashboard(),
    // const AddMealType(),
    const UserProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    // final User? user = ModalRoute.of(context)!.settings.arguments `as User;
    UserController userController = context.watch<UserController>();
    final user = userController.user;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text("Welcome Back ")),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                LoginScreen.routeName, (route) => false),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Container(
          color: Colors.grey.withOpacity(0.05),
          child: _widgets[selectedIndex!]),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: [
      // BottomNavigationBarItem(
      //   icon: const Icon(Icons.home),
      //   label: 'Home',
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      // // BottomNavigationBarItem(
      //   icon: const Icon(Icons.add),
      //   label: 'Add Meals',
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      // BottomNavigationBarItem(
      //   icon: const Icon(Icons.fitness_center),
      //   label: 'Add Meals',
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      // BottomNavigationBarItem(
      //   icon: const Icon(Icons.account_circle_sharp),
      //   label: 'User Profile',
      //   backgroundColor: Theme.of(context).primaryColor,

      // )
      // ],
      // selectedItemColor: Colors.white,
      // unselectedItemColor: Colors.black26,
      // currentIndex: selectedIndex!,
      // backgroundColor: Theme.of(context).primaryColor,
      // onTap: (index) {
      //   setState(() {
      //     selectedIndex = index;
      //   });
      // }),
    );
  }
}
