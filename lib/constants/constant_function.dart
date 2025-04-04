import 'dart:convert';
import 'package:http/http.dart' as http;

class ConstantFunction {
  
  static Future<List <Map<String,dynamic>>> getResponse(String findRecipe) async {

    String key='ce4006da9c2e435eb068ba066d82ab5f';
 
    String api='https://api.spoonacular.com/recipes/complexSearch?query=$findRecipe&apiKey=$key';
  
    final response=await http.get(Uri.parse(api));
    List<Map<String,dynamic>> recipe= [];
    if(response.statusCode==200){
      var data=jsonDecode(response.body);
         print("Recipe API Response: $data");

      if (data['results'] != null) {
        for (var result in data['results']) {
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


  static Future<List<Map<String,dynamic>>> getIngredient(int recipeId) async {

    String key='ce4006da9c2e435eb068ba066d82ab5f';
 
    String api='https://api.spoonacular.com/recipes/$recipeId/information?apiKey=$key';
  
    final response=await http.get(Uri.parse(api));
    List<Map<String,dynamic>> recipe= [];
    if(response.statusCode==200){
      var data=jsonDecode(response.body);
         print("Recipe API Response: $data");

      if (data['extendedIngredients'] != null && data['extendedIngredients'].isNotEmpty){
        for(var ingredient in data['extendedIngredients']) {
          recipe.add({
            'original': ingredient['original'], 
            'unit': ingredient['unit'],
            'name': ingredient['name'],

 
            });
        }
      }
      return recipe;
    }

    return recipe;
  }



}


