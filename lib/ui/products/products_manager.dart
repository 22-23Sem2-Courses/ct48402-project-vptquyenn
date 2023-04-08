import '../../models/product.dart';

class ProductsManager {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Cua Trong Suốt',
      description: 'Cua trong suốt là món đồ chơi trẻ em vô cùng tuyệt vời. Với bề mặt trong suốt bạn hoàn toàn có thể nhìn rõ chuyển động của bánh răng bên trong, kết hợp với đèn và âm nhạc sôi động bé có thể chơi cả ngày không chán.',
      price: 77.000,
      imageUrl:
          'https://tongkhothienan.com/wp-content/uploads/2022/07/do-choi-cho-be-con-phat-sang-banh-rang-tongkhothienan-2.jpg',
      isFavorite: true,
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}