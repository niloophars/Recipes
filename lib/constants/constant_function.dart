import 'dart:convert';

import 'package:http/http.dart ' as http;


class ConstantFunction {
  
  static Future<List<Map<String,dynamic>>> getResponse(String findRecipe) async {

    String key='3a004566d5e04dceb403c0152e7c5a32';
 
    String api='https://api.spoonacular.com/recipes/complexSearch?query=$findRecipe&apiKey=$key';
  
    final response=await http.get(Uri.parse(api));
    List<Map<String,dynamic>> recipe= [];
    if(response.statusCode==200){
      var data=jsonDecode(response.body);

      if(data['results']!=null){
        for(var result in data['results']) {
          recipe.add({
            'id': result['id'], 
            'title': result['title'], 
            'image': result['image'], 
            });
        }
      }
      return recipe;
    }
    return recipe;
  }
}


