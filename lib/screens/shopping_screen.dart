// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:nomnom/components/custom_app_bar.dart';

<<<<<<< HEAD

// class ShoppingScreen extends StatelessWidget {
//  const ShoppingScreen ({super.key});

//  @override
//  Widget build (BuildContext context) {
//  final h=MediaQuery.of(context).size.height;
//   var myBox=Hive.box('shopping')
//    return Scaffold(
//     appBar:CustomAppBar(title:'Shopping',back: false,),
//     body: ValueListenableBuilder(
//      valueListenable:myBox.listenable(),
//      builder: (context, box,){
//       var data=box.values.toList();
//       return ListView.builder(
//         itemCount: box.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Container(
//               height: h*.085,
//               color:Colors.grey[100],
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 3,
//                     child: Text(data[index]))
//                   PopupMenuButton(itemBuilder: (context){
//                     return const[
//                       PopupMenuItem(value: Text("share"),value: 'share',)
//                       PopupMenuItem(value: Text("delete"),value: 'delete',)

//                     ];
//                   },
//                   onSelected: (String value)async{
//                     if(value=='delete'){
//                       deleteItem(index);
//                     }
//                     else if(value=='share'){
//                       ShareRecipe.share(data[index]);
//                     }
//                     },
                  
//                   )
//                 ],
//               ),
//             ),
//           );
//         });
//        },
//       ),
//     );
//   }
//   Future<void> deleteItem(int index)async{
//     var myBox=Hive.box('shopping');
//     await myBox.deleteAt(index);
//   }
// }
=======
class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    var myBox = Hive.box('shopping');
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Shopping',
        back: false,
      ),
      body: ValueListenableBuilder<Box<dynamic>>(
        valueListenable: myBox.listenable(),
        builder: (BuildContext context, Box<dynamic> box, Widget? child) {
          var data = box.values.toList();
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                  height: h * .085,
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(data[index]),
                      ),
                      PopupMenuButton<String>(
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem<String>(
                              value: 'share',
                              child: Text("Share"),
                            ),
                            const PopupMenuItem<String>(
                              value: 'delete',
                              child: Text("Delete"),
                            ),
                          ];
                        },
                        onSelected: (String value) async {
                          if (value == 'delete') {
                            deleteItem(index);
                          } else if (value == 'share') {
                            // Replace with your sharing logic
                            print('Sharing: ${data[index]}');
                          }
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> deleteItem(int index) async {
    var myBox = Hive.box('shopping');
    await myBox.deleteAt(index);
  }
}
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
