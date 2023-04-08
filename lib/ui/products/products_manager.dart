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
    Product(
      id: 'p2',
      title: 'Ếch Ăn Kẹo',
      description: 'Đồ chơi trẻ em ếch ăn kẹo (bộ ếch nhiều bi) cho cả gia đình 4 người chơi - Đồ chơi tương tác trẻ em 3 4 5 6 tuổi.',
      price: 250.00,
      imageUrl:
          'https://vn-test-11.slatic.net/p/1a6c169756359132d64e531a5cda2915.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Xe Mô Phỏng Điện Thoại',
      description: 'Đồ chơi trẻ em mô phỏng điện thoại cố định 6 nam câu đố âm nhạc cho bé giáo dục sớm 0-1 tuổi 12 tháng 7 bé gái 8.',
      price: 90.00,
      imageUrl:
          'https://xuatnhapkhautheoyeucau.com/wp-content/uploads/2020/01/O1CN016IQSqa1aTds09GOcw_2015123331.jpg_400x400.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Lego',
      description: 'Bộ đồ chơi Lego 1000 chi tiết cho bé thỏa sức lắp ráp bất cứ điều gì bé thích. Qua đó, khả năng sáng tạo và trí tưởng tượng của bé sẽ trở nên nhạy bén hơn..',
      price: 120.00,
      imageUrl:
          'https://linhanhkids.com/wp-content/uploads/2018/05/lego-maumoi-linhanhkids3.jpg',
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