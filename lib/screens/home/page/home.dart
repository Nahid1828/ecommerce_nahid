import 'package:ecommerce_nahid/common/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: "New Title", backButton: true),
      body: Center(
        child: Container(
          width: double.infinity, // Make the container take full width
          height: 400, // Set a height for the container to ensure it is visible
          padding: const EdgeInsets.all(16), // Padding inside the container
          decoration: BoxDecoration(
            color: Colors.white, // Set a background color for the container
            borderRadius: BorderRadius.circular(10), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/headphone.png', width: 200),
              const SizedBox(height: 10),
              const Text(
                "TMA-2 HD Wireless",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Rp. 1.500.000",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  Text("4.6  86 Reviews"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
