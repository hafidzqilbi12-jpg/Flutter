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
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          // Banner promo
          Container(
            height: 160,
            margin: const EdgeInsets.fromLTRB(14, 14, 21, 14),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1547592180-85f173990554?w=1000',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(color: Colors.orange.shade100);
                  },
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black.withValues(alpha: 0.75),
                        Colors.black.withValues(alpha: 0.05),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 15,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'PROMO HARI INI',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 48,
                  left: 15,
                  child: Text(
                    'Diskon hingga\n30%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      height: 1.05,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 14,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.orange,
                    ),
                    onPressed: () {},
                    child: const Text('Lihat Promo'),
                  ),
                ),
              ],
            ),
          ),

          // Informasi layanan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: _serviceCard(
                    Icons.delivery_dining,
                    'Gratis Ongkir',
                    'Min. pembelian',
                    'Rp30.000',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _serviceCard(
                    Icons.access_time,
                    'Buka Hari Ini',
                    '08.00 - 17.00',
                    '',
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 26),

          // Judul kategori
          _sectionTitle('Kategori', 'Lihat Semua'),

          const SizedBox(height: 12),

          // Kategori dapat digeser ke kanan dan kiri
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = index == 0;

                return Container(
                  width: 100,
                  margin: const EdgeInsets.only(right: 9),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.orange : Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        category['icon'] as IconData,
                        color: isSelected ? Colors.white : Colors.orange,
                        size: 23,
                      ),
                      const SizedBox(height: 7),
                      Text(
                        category['name'] as String,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 26),

          // Menu favorit
          _sectionTitle('Menu Favorit', 'Lihat Semua'),

          const SizedBox(height: 12),

          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.78,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return _productCard(product);
            },
          ),

          const SizedBox(height: 22),

          // Berita kampus
          _sectionTitle('Berita Kampus', 'Lihat Semua'),

          const SizedBox(height: 12),

          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: news.length,
            itemBuilder: (context, index) {
              final item = news[index];
              return Container(
                height: 78,
                margin: const EdgeInsets.only(bottom: 9),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item['image'] as String,
                        width: 65,
                        height: 65,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 65,
                            height: 65,
                            color: Colors.orange.shade100,
                            child: const Icon(
                              Icons.restaurant,
                              color: Colors.orange,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 9),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              item['category'] as String,
                              style: const TextStyle(
                                color: Colors.orange,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['title'] as String,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            item['date'] as String,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.grey.shade500),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _serviceCard(
    IconData icon,
    String title,
    String firstText,
    String secondText,
  ) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.orange, size: 17),
          ),
          const SizedBox(width: 7),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (firstText.isNotEmpty)
                  Text(
                    firstText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
                  ),
                if (secondText.isNotEmpty)
                  Text(
                    secondText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title, String action) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            action,
            style: const TextStyle(color: Colors.orange, fontSize: 11),
          ),
        ],
      ),
    );
  }

  Widget _productCard(Map<String, dynamic> product) {
    final bool isAvailable = product['available'] as bool;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200),
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
                  product['image'] as String,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(color: Colors.orange.shade100);
                  },
                ),
                Positioned(
                  top: 7,
                  left: 7,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 12),
                        const SizedBox(width: 3),
                        Text(
                          '${product['rating']}',
                          style: const TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 7,
                  bottom: 7,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: isAvailable ? Colors.green : Colors.redAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      isAvailable ? 'Tersedia' : 'Habis',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
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
              padding: const EdgeInsets.fromLTRB(8, 7, 8, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name'] as String,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    product['category'] as String,
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rp${product['price']}',
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          color: isAvailable ? Colors.orange : Colors.grey,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
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
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'KantinKampus',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            'Makan enak, harga bersahabat',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined, size: 21),
        ),
      ],
    );
  }
}
