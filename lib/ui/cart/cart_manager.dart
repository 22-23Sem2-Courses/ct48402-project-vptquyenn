import '../../models/cart_item.dart';

class CartManager {
  final Map<String, CartItem> _items = {
    'p1': CartItem(
      id: 'c1',
      title: 'Cua Trong Suốt',
      price: 77.000,
      quantity: 2,
      imageUrl: 'https://tongkhothienan.com/wp-content/uploads/2022/07/do-choi-cho-be-con-phat-sang-banh-rang-tongkhothienan-2.jpg',
    ),
  };
  
  int get productCount {
    return _items.length;
  }

  List<CartItem> get products {
    return _items.values.toList();
  }

  Iterable<MapEntry<String, CartItem>> get productEntries {
    return {..._items}.entries;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}