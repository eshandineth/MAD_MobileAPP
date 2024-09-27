import 'package:clothing_store3/product_detail.dart';
import 'package:flutter/material.dart';

class Womens extends StatelessWidget {
  static const String id = 'Womens';

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/womens_banner.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Exclusive Women\'s Collection',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: 'Offers ',
                        style: TextStyle(color: Colors.orange)),
                    TextSpan(
                        text: 'Just for You',
                        style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black)),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: isLandscape ? 180 : 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildOfferCard(
                        '20% off on Croptop',
                        'assets/images/womens_offer1.jpg',
                        isLandscape,
                        isDarkMode),
                    _buildOfferCard(
                        'Buy 1 Get 1 Free',
                        'assets/images/womens_offer2.jpg',
                        isLandscape,
                        isDarkMode),
                    _buildOfferCard(
                        '30% off on Skirt',
                        'assets/images/womens_offer3.jpg',
                        isLandscape,
                        isDarkMode),
                    _buildOfferCard(
                        'Buy 1 Get 1 Free on Dresses',
                        'assets/images/womens_offer4.jpg',
                        isLandscape,
                        isDarkMode),
                    _buildOfferCard(
                        '40% Off on Jackets & Coats',
                        'assets/images/womens_offer5.jpg',
                        isLandscape,
                        isDarkMode),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: 'Featured ',
                        style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black)),
                    TextSpan(
                        text: 'Products',
                        style: TextStyle(color: Colors.orange)),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  _buildProductCard(
                      context,
                      'Women\'s Dress',
                      'assets/images/womens_dress.jpg',
                      '\$25.00',
                      isDarkMode, () {
                    Navigator.pushNamed(context, ProductDetail.id, arguments: {
                      'productName': 'Women\'s Dress',
                      'productImage': 'assets/images/womens_dress.jpg',
                      'productPrice': '\$25.00',
                      'productDescription':
                          'Comfortable Dress for cute occasions.',
                    });
                  }),
                  _buildProductCard(
                      context,
                      'Women\'s Leggings',
                      'assets/images/womens_leggings.jpg',
                      '\$20.00',
                      isDarkMode, () {
                    Navigator.pushNamed(context, ProductDetail.id, arguments: {
                      'productName': 'Women\'s Leggings',
                      'productImage': 'assets/images/womens_leggings.jpg',
                      'productPrice': '\$20.00',
                      'productDescription':
                          'Stylish active legging for gym wear.',
                    });
                  }),
                  _buildProductCard(
                      context,
                      'Women\'s Skirt',
                      'assets/images/womens_skirt.jpg',
                      '\$30.00',
                      isDarkMode, () {
                    Navigator.pushNamed(context, ProductDetail.id, arguments: {
                      'productName': 'Women\'s Skirt',
                      'productImage': 'assets/images/womens_skirt.jpg',
                      'productPrice': '\$30.00',
                      'productDescription':
                          'Elegant skirt for formal occasions.',
                    });
                  }),
                  _buildProductCard(
                      context,
                      'Women\'s Croptop',
                      'assets/images/womens_croptop.jpg',
                      '\$45.00',
                      isDarkMode, () {
                    Navigator.pushNamed(context, ProductDetail.id, arguments: {
                      'productName': 'Women\'s Croptop',
                      'productImage': 'assets/images/womens_croptop.jpg',
                      'productPrice': '\$45.00',
                      'productDescription':
                          'Comfortable Crop-top for essential functions.',
                    });
                  }),
                  _buildProductCard(
                      context,
                      'Women\'s Jacket',
                      'assets/images/womens_jacket.jpg',
                      '\$60.00',
                      isDarkMode, () {
                    Navigator.pushNamed(context, ProductDetail.id, arguments: {
                      'productName': 'Women\'s Jacket',
                      'productImage': 'assets/images/womens_jacket.jpg',
                      'productPrice': '\$60.00',
                      'productDescription': 'Stylish jacket for cold weather.',
                    });
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOfferCard(
      String offerText, String imagePath, bool isLandscape, bool isDarkMode) {
    return Container(
      width: isLandscape ? 220 : 160,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: isDarkMode ? Colors.black45 : Colors.black26,
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? Colors.black54.withOpacity(0.7)
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              offerText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String name, String imagePath,
      String price, bool isDarkMode, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: isDarkMode ? Colors.grey[850] : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  // Cart button
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart,
                        color: isDarkMode ? Colors.white : Colors.black),
                    onPressed: () {},
                  ),

                  IconButton(
                    icon: Icon(Icons.favorite_border,
                        color: isDarkMode ? Colors.white : Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
