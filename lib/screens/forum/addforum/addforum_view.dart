import 'package:flutter/material.dart';
import 'package:pet_app/screens/forum/forum_viewmodel.dart';
import 'package:pet_app/screens/homescreen/homescreen_view.dart';
import 'package:provider/provider.dart';

class AddForumScreen extends StatefulWidget {
  static const routeName = "/addforum-screen";
  const AddForumScreen({Key? key}) : super(key: key);

  @override
  State<AddForumScreen> createState() => _AddForumScreenState();
}

class _AddForumScreenState extends State<AddForumScreen> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Add new Post'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(hintText: 'Enter post title'),
            controller: title,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(hintText: 'Enter post Description'),
            controller: description,
          ),
        ),
        Consumer<ForumViewModel>(
            builder: (context, viewmodel, _) => ElevatedButton(
                  onPressed: () async {
                    await viewmodel.addPost(title.text, description.text);
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        HomeScreen.routeName, (route) => false);
                  },
                  child: const Icon(Icons.add),
                ))
      ]),
    );
  }
}
