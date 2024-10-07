class Item {
  final String name;
  final int price;
  final String photo; // URL atau path ke gambar
  final int stock; // Stok yang tersedia
  final double rating; // Rating produk

  Item({
    required this.name,
    required this.price,
    required this.photo,
    required this.stock,
    required this.rating, required String imageUrl,
  });

  get imageUrl => null;
}