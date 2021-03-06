// import 'package:flutter/material.dart';
// import 'package:pet_app/model/meal.dart';
// import 'package:provider/provider.dart';

// import '../controllers/user_controller.dart';

// class MealScreen extends StatelessWidget {
//   static const routeName = '/addmeal-screen';

//   const MealScreen({Key? key}) : super(key: key);

//   Widget buildTitle(BuildContext ctx, String title) {
//     return Container(
//         margin: const EdgeInsets.symmetric(vertical: 10),
//         child: Text(
//           title,
//           style: Theme.of(ctx).textTheme.headline6,
//         ));
//   }

//   Widget buildContainer(Widget widget) {
//     return Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         margin: const EdgeInsets.all(10),
//         padding: const EdgeInsets.all(10),
//         height: 150,
//         width: 300,
//         child: widget);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final meal = ModalRoute.of(context)!.settings.arguments as Meal?;

//     // MealViewModel mealviewmodel = context.watch<MealViewModel>();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(meal?.title?.toLowerCase() ?? " "),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(
//                     color: Theme.of(context).primaryColor,
//                     width: 4,
//                   )),
//               margin: const EdgeInsets.all(15),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(6),
//                 child: Image.asset(
//                   'assets/images/${meal?.imageUrl?.toString()}',
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             buildTitle(context, 'Nutritional Information'),
//             buildContainer(Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     CircleAvatar(
//                         child: Text(' ${meal?.protein?.toString() ?? " "} G'),
//                         backgroundColor: Colors.amber,
//                         radius: 25),
//                     CircleAvatar(
//                         child: Text(' ${meal?.carb?.toString() ?? " "} G'),
//                         backgroundColor: Colors.amber,
//                         radius: 25),
//                     CircleAvatar(
//                         child: Text(' ${meal?.fat?.toString() ?? " "} G'),
//                         backgroundColor: Colors.amber,
//                         radius: 25)
//                   ],
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(right: 15),
//                   padding: const EdgeInsets.all(15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     // crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Text('Protein'),
//                       Container(
//                           margin: const EdgeInsets.only(right: 40, left: 35),
//                           child: const Text('Carb')),
//                       const Text('Fats'),
//                     ],
//                   ),
//                 ),
//               ],
//             )),
//             Consumer<UserController>(
//               builder: (context, viewmodel, _) => ElevatedButton(
//                 onPressed: () async {
//                   await viewmodel.updateUserMeal(meal?.id);
//                 },
//                 child: Text(
//                   'Add Meal',
//                   style: TextStyle(
//                     fontFamily: 'Lato',
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.white.withOpacity(0.9),
//                   ),
//                 ),
//                 style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all(Colors.amber.withOpacity(0.7)
//                             // const Color.fromRGBO(246, 197, 190, 1)
//                             )),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// // 