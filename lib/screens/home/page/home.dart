import 'package:ecommerce_nahid/common/widgets/appbar.dart' show FAppBar;
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../common/widgets/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Column(
      children: [
        Center(
          child: Container(
            width: 300,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 33, 54),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Gratis Ongkir Selama PPKM!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Periode Mei - Agustus 2021",
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ],
                ),
                const Icon(Icons.local_shipping, color: Colors.white, size: 35),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
          child: SizedBox(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/headphone.png', width: 150),
                  const SizedBox(height: 8),
                  const Text(
                    "TMA-2 HD Wireless",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Rp. 1.500.000",
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      SizedBox(width: 4),
                      Text(
                        "4.6",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "86 Reviews",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: "Mega Shop", backButton: true),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart_outline),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_bag_outline),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user_add_bold),
            label: "Accounts",
          ),
        ],
      ),
    );
  }
}
