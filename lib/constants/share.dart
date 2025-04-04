<<<<<<< HEAD

=======
import 'package:flutter/material.dart';
>>>>>>> 2197ceaf82f1336f2fd7d657a1fe723eedd54368
import 'package:share_plus/share_plus.dart';

class ShareRecipe {
  static share(String recipeLink) async {
    // Share the recipe link using the share_plus package
    await Share.share(recipeLink);
  }

}

