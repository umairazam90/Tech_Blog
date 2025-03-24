import 'package:flutter/material.dart';
import 'Blog.dart';

class Mobilephone extends StatelessWidget {
  final List<Map<String, String>> blogs = [
    {
      'title': 'Mobile ',
      'description': 'From Pixels to Power: How Mobile Phones Are Revolutionizing Our World',
      'image': 'assets/images/old_vs_new.jpg',
      'content': '''Mobile phones have transformed from bulky communication devices to indispensable, multifunctional tools that fit in our pockets. This evolution spans over a century, marked by groundbreaking innovations and technological advancements.
      
      Early Beginnings:
      
      The concept of wireless communication dates back to 1908 when a U.S. patent was issued for a wireless telephone in Kentucky.By the 1940s, engineers at AT&T developed cells for mobile phone base stations, laying the groundwork for cellular networks.
      
      The First Handheld Mobile Phone:
      
      A significant milestone was achieved in 1973 when Martin Cooper of Motorola made the first handheld mobile phone call using a device weighing approximately 2 kilograms (4.4 lbs). This pioneering event paved the way for mobile communication as we know it today.
      
      Commercialization and Cellular Networks:
      In 1979, Nippon Telegraph and Telephone (NTT) launched the world's first cellular network in Japan. By 1983, Motorola introduced the DynaTAC 8000x, the first commercially available handheld mobile phone, albeit with a hefty price tag and limited battery life.
      
      The Rise of Smartphones:
      
      The 1990s witnessed the advent of devices that combined telephony with computing capabilities. IBM's Simon Personal Communicator, introduced in 1994, is often regarded as the first smartphone, featuring a touchscreen and basic applications like a calendar and address book.
      
      Modern-Day Mobile Phones:
      
      The 21st century ushered in an era of rapid advancement. In 2007, Apple released the first iPhone, revolutionizing the industry with its user-friendly interface and app ecosystem. Today, smartphones are equipped with high-resolution cameras, powerful processors, and access to a vast array of applications, making them central to communication, entertainment, and productivity.
      
      Conclusion:
      
      The journey of mobile phones reflects human ingenuity and the relentless pursuit of connectivity. From early wireless communication concepts to the sophisticated smartphones of today, these devices have profoundly impacted society, reshaping how we interact with the world and each other.
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
