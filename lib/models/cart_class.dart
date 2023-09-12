import 'fruits_class.dart';
import 'package:collection/collection.dart';

class Cart {
  List<CartItem> selectedItems = [];

  void addToCart(Fruit fruit) {
    final existingItem = selectedItems.firstWhereOrNull(
          (item) => item.fruit.name == fruit.name,
    );

    if (existingItem != null) {
      existingItem.quantity++;
    } else {
      selectedItems.add(CartItem(fruit: fruit, quantity: 1));
    }
  }

  void removeFromCart(Fruit fruit) {
    final existingItemIndex = selectedItems.indexWhere(
          (item) => item.fruit.name == fruit.name,
    );

    if (existingItemIndex != -1) {
      final existingItem = selectedItems[existingItemIndex];
      if (existingItem.quantity > 1) {
        existingItem.quantity--;
      } else {
        selectedItems.removeAt(existingItemIndex);
      }
    }
  }
}