import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipe_app_tutorial/components/custom_app_bar.dart';

class SavedScreens extends StatelessWidget{
const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myBox Hive.box('saved');
    return Scaffold(
      appBar:const CustomAppBar(title: 'Saved', back: false),
      body: Padding (padding:const EdgeInsets.only(top: 10,right: 8,left: 8),
      child: ValueListenableBuilder(
        valueListenable:myBox.listenable()
        builder: (context, box,_){
         return ListView.builder(
          itemCount: box.length,
          itemBuilder: (context, index){
            var data=box.values.tolist();
            return listTile(
              title: Container(
                height: h*.085
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Expanded 
                    flex:3,
                    (child: Text (data[index])),
                    PopupMenuButton(itembuilder: (context){
                      return const[
                        PopupMenuItem(child: Text('share'),value:'share',),
                        PopupMenuItem(child: Text('delete'),value: 'delete',)

                      ],
          }),
           ],
                  ),
                )
              );
        })
         }); 
        );
    );
        }
   
  }

 