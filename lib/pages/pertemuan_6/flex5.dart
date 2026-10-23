import 'package:flutter/material.dart';

final List<Map<String, dynamic>> categories = [
  {'name': 'Semua', 'icon': Icons.restaurant_menu},
  {'name': 'Makanan', 'icon': Icons.ramen_dining},
  {'name': 'Minuman', 'icon': Icons.local_drink},
  {'name': 'Snack', 'icon': Icons.fastfood},
  {'name': 'Promo', 'icon': Icons.local_offer},
];

final List<Map<String, dynamic>> products = [
  {
    'name': 'Nasi Goreng',
    'category': 'Makanan',
    'price': 15000,
    'rating': 4.8,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800',
  },
  {
    'name': 'Ayam Geprek',
    'category': 'Makanan',
    'price': 18000,
    'rating': 4.9,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=800',
  },
  {
    'name': 'Mie Ayam',
    'category': 'Makanan',
    'price': 12000,
    'rating': 4.7,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=800',
  },
  {
    'name': 'Es Teh Manis',
    'category': 'Minuman',
    'price': 5000,
    'rating': 4.6,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=800',
  },
  {
    'name': 'Kopi Susu',
    'category': 'Minuman',
    'price': 10000,
    'rating': 4.8,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=800',
  },
  {
    'name': 'Roti Bakar',
    'category': 'Snack',
    'price': 10000,
    'rating': 4.5,
    'available': false,
    'image':
        'https://images.unsplash.com/photo-1521305916504-4a1121188589?w=800',
  },
];

// Dynamic List untuk berita
final List<Map<String, dynamic>> news = [
  {
    'title': 'Promo Makan Hemat untuk Mahasiswa',
    'category': 'Promo',
    'date': '7 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800',
  },
  {
    'title': 'KantinKampus Tambah Menu Baru',
    'category': 'Informasi',
    'date': '6 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1498837167922-ddd27525d352?w=800',
  },
  {
    'title': 'Tips Memilih Makanan Sebelum Kuliah',
    'category': 'Tips',
    'date': '5 Oktober 2026',
    'image': 'https://images.unsplash.com/photo-1547592180-85f173990554?w=800',
  },
];

class Flex5 extends StatelessWidget {
  const Flex5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          Container(
            height: 210,
            margin: EdgeInsets.fromLTRB(21, 16, 21, 16),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR20jasGjIiZqybQ-PFqYR8T0yESdRXE6K7cELqsrNe4vDqSFCoWxE4t7Ze&s=10',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(color: Colors.yellow);
                  },
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.centerLeft,
                      end: AlignmentGeometry.centerRight,
                      colors: [
                        Colors.black.withValues(alpha: 0.75),
                        Colors.black.withValues(alpha: 0.10),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "PROMO HARI INI",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 20,
                  child: Text(
                    "Diskon Hingga \n30%",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      height: 1.1,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.orange,
                    ),
                    onPressed: () {},
                    child: Text("Lihat promo"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 100,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.delivery_dining_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gratis Ongkir",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Min. pembelian",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              "Rp 30.000",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 100,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.access_time, color: Colors.white),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buka Hari Ini",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "08:00 - 17:00",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Test grid view
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final kategori = categories[index];
              return Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
                child: Center(child: Text(kategori['name'] as String)),
              );
            },
          ),
          GridView.builder(
            padding: EdgeInsets.all(15),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 15,
              childAspectRatio: 0.77,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            product['image'],
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(color: Colors.orange.shade100),
                          ),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 17,
                                  ),
                                  SizedBox(width: 4),
                                  Text('${product['rating']}'),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            right: 10,
                            bottom: 12,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Tersedia',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(14, 12, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product['name'] as String,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              product['category'] as String,
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Rp${product['price']}',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "KantinKampus",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            "Makan Enak, Harga Bersahabat",
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
    );
  }
}
