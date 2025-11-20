import 'ingredient.dart';

class Sheet {
  final String id;
  final String name;
  final List<Ingredient> ingredients;
  final double totalCost;
  final double sellingPrice;
  final double margin;

  Sheet({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.totalCost,
    required this.sellingPrice,
    required this.margin,
  });
}

