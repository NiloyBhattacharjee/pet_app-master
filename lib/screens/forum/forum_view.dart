import 'package:flutter/material.dart';
import 'package:pet_app/Animal_shelter/form.dart';
import 'package:pet_app/screens/forum/addforum/addforum_view.dart';
import 'package:pet_app/screens/forum/forum_viewmodel.dart';
import 'package:provider/provider.dart';

class ForumScreen extends StatelessWidget {
  static const routeName = '/forumScreen-screen';
  const ForumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForumViewModel forumViewModel = context.watch<ForumViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: Provider.of<ForumViewModel>(context).getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            return const CircularProgressIndicator();
          } else {
            return SingleChildScrollView(
              child: Column(
                children: forumViewModel.posts
                    .map((post) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.all(8.00),
                                    child: Text('${post.title}')),
                                const SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text('${post.description}'),
                                ),
                                Container(
                                    alignment: Alignment.bottomRight,
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('${post.likes}'),
                                        IconButton(
                                          icon: Icon(Icons.favorite_border),
                                          onPressed: () {
                                            forumViewModel
                                                .increaseLikes(post.id);
                                          },
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AddForumScreen.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
