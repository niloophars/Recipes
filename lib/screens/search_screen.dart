import 'package:flutter/material.dart';
import 'package:nomnom/components/all_recipe.dart';
import 'package:nomnom/components/custom_app_bar.dart';
import 'package:nomnom/components/text_field_widget.dart';
import 'package:nomnom/constants/search_tags.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold() = Scaffold(
      appBar: const CustomAppBar(
        title: 'Search',
        back: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: h * 0.016, horizontal: w * 0.032),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextFieldWidget(),
            SizedBox(height: h * .04),
            Text(
              'Search Tags',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * .06),

            ),
            Wrap(
                spacing: 8,
                children: tags.map((label) {
                  return ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AllRecipe(recipe: label)));
                      },
                      child: Text(label));
                }).toList()
            ),
            ],
        ),
      ),
    );
  }
}

