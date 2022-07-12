import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:pet_app/controllers/user_controller.dart';
import 'package:pet_app/providers/users.dart';
// import 'package:pet_app/providers/dummy.dart';
import 'package:pet_app/router.dart' as router;

import 'package:pet_app/screens/Profile_pet/pet_profile.dart';
// import 'package:pet_app/screens/Profile_pet/profile_page.dart';
import 'package:pet_app/screens/introscreen_page.dart';
import 'package:pet_app/responsive/mobile_screen_layout.dart';
import 'package:pet_app/responsive/responsive_layout_screen.dart';
import 'package:pet_app/responsive/web_screen_layout.dart';
import 'package:pet_app/screens/Hompage.dart';
import 'package:pet_app/screens/login/login_view.dart';
import 'package:pet_app/screens/login/login_viewmodel.dart';
import 'package:pet_app/screens/login_screen.dart';
// import 'package:pet_app/screens/vaccination_screen.dart';
import 'package:pet_app/responsive/responsive_layout_screen.dart';
import 'package:pet_app/screens/signup/signup_viewmodel.dart';
import 'package:pet_app/searchmeal/searchmeal_viewmodel.dart';
import 'package:pet_app/utils/color.dart';
import 'package:flutter/material.dart';

import 'package:pet_app/responsive/web_screen_layout.dart';
import 'package:pet_app/responsive/mobile_screen_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:pet_app/screens/login_screen.dart';
// import 'package:pet_app/screens/sign_up_screen.dart';
import 'package:provider/provider.dart';

// import '';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDuT19MsNdlUNmeqR-c-STLhr04tZf5ilU",
          authDomain: "pet-app-2eb07.firebaseapp.com",
          projectId: "pet-app-2eb07",
          storageBucket: "pet-app-2eb07.appspot.com",
          messagingSenderId: "67591459732",
          appId: "1:67591459732:web:d49a9661ed6739ff003581",
          measurementId: "G-LSVJ34KW39"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Users()),
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
        ChangeNotifierProvider(create: (context) => SignUpViewModel()),
        ChangeNotifierProvider(create: (context) => SearchMealViewModel()),
        ChangeNotifierProvider(create: (context) => UserController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PetCare App',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        // initialRoute: MealScreen.routeName,
        onGenerateRoute: router.createRoute,
        // home: StreamBuilder(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.active) {
        //       if (snapshot.hasData) {
        //         return const IntroScreenPage();
        //       } else if (snapshot.hasError) {
        //         return Center(
        //           child: Text('${snapshot.error}'),
        //         );
        //       }
        //     }
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return const Center(
        //         child: CircularProgressIndicator(
        //           color: primaryColor,
        //         ),
        //       );
        //     }
        //     return const LoginScreen();
        //   },
        // ),
        // )
      ),
    );
  }
}
