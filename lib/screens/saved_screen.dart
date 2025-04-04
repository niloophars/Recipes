import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:recipe_app_tutorial/components/custom_app_bar.dart'; // Removed invalid import

class SavedScreens extends StatelessWidget {
  const SavedScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myBox = Hive.box('saved');
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Saved'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
            child: ValueListenableBuilder(
                valueListenable: myBox.listenable(),
                builder: (context, box, _) {
                  return ListView.builder(
                      itemCount: box.length,
                      itemBuilder: (context, index) {
                        var data = box.values.toList();
                        return ListTile(
                          title: Container(
                            height: h * .085,
                            color: Colors.grey[100],
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text(data[index]),
                                ),
                                PopupMenuButton(
                                  itemBuilder: (context) {
                                    return const [
                                      PopupMenuItem(
                                        child: Text('share'),
                                        value: 'share',
                                      ),
                                      PopupMenuItem(
                                        child: Text('delete'),
                                        value: 'delete',
                                      ),
                                    ];
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                })));
  }
}
