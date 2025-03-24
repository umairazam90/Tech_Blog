import 'package:flutter/material.dart';
import 'Blog.dart';

class Desktop extends StatelessWidget {
  final List<Map<String, String>> blogs = [
    {
      'title': 'Laptop vs Desktop PC',
      'description': 'Laptops offer mobility, desktops bring power—so which one is right for you?',
      'image': 'assets/images/lp_vs_dsk1.jpg',
      'content': '''Choosing between a laptop and a desktop PC depends on your needs for portability, performance, and upgradeability. Let’s compare them!

1. Portability vs. Stationary Use
Laptops: Lightweight, portable, with built-in batteries—ideal for work, school, and travel.

Desktops: Stationary setup, perfect for dedicated workspaces and gaming.

👉 Best for mobility? Laptops. For a stable workstation? Desktops.

2. Performance & Power
Laptops: Good for everyday tasks, but limited cooling affects performance in demanding applications.

Desktops: More powerful, better cooling, ideal for gaming, editing, and heavy workloads.

👉 Need power? Choose desktops. Need convenience? Go for a laptop.

3. Upgradeability & Customization
Laptops: Limited upgrades (RAM, storage).

Desktops: Fully customizable—better for long-term performance.

👉 Want future-proofing? Desktops win.

4. Battery Life & Power Consumption
Laptops: Runs on battery, energy-efficient.

Desktops: Requires constant power, consumes more energy.

👉 Need on-the-go use? Laptops are better.

5. Price & Value for Money
Laptops: Higher price for portability and all-in-one convenience.

Desktops: More power for the price but requires extra peripherals.

👉 Budget-friendly for performance? Desktops. All-in-one solution? Laptops.

Final Verdict
Pick a laptop for portability and convenience.

Choose a desktop for power and long-term value.
'''
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tech Blog')),
      body: ListView.builder(
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(blogs[index]['title']!),
              subtitle: Text(blogs[index]['description']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlogScreen(
                      title: blogs[index]['title']!,
                      imagePath: blogs[index]['image']!,
                      content: blogs[index]['content']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
