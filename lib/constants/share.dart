
import 'package:share_plus/share_plus.dart';

class ShareRecipe {
  static share(String recipeLink) async {
    // Share the recipe link using the share_plus package
    await Share.share(recipeLink);
  }
}