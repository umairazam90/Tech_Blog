import 'package:flutter/material.dart';
import 'Blog.dart';

class tablets extends StatelessWidget {
  final List<Map<String, String>> blogs = [
    {
      'title': 'Mobile Phone vs Tablets',
      'description': 'Mobile phones and tablets may seem similar, but when it comes to performance, portability, and functionality, which one truly fits your lifestyle? Lets dive in!',
      'image': 'assets/images/mb_vs_tb1.jpg',
      'content': '''Technology has transformed the way we communicate, work, and entertain ourselves. Among the most widely used devices today are mobile phones and tablets, each offering unique advantages. But when choosing between the two, which one is the better fit for your needs? Let's compare them in terms of portability, performance, battery life, and usability to help you decide.

1. Portability: Convenience vs. Screen Size
Mobile Phones: Designed for everyday use, smartphones are compact, lightweight, and fit easily in pockets. They are perfect for quick access to calls, messaging, and social media.

Tablets: With larger screens, tablets offer better readability and a more immersive experience, but they are bulkier. Carrying a tablet may require a bag, making them less convenient for on-the-go use.

👉 Verdict: If portability is your priority, mobile phones win. If you need a bigger screen for media or work, a tablet is better.

2. Performance & Productivity
Mobile Phones: Modern smartphones have powerful processors and high RAM, making them efficient for multitasking, gaming, and browsing. However, their smaller screens can limit productivity.

Tablets: Tablets are often equipped with similar or better hardware than smartphones, making them ideal for work tasks like document editing, graphic design, and video conferencing. The larger display enhances productivity.

👉 Verdict: Tablets are better for work and creative tasks, while phones are great for everyday convenience.

3. Battery Life: Who Lasts Longer?
Mobile Phones: Due to their compact size, smartphones have smaller batteries, leading to frequent charging, especially with heavy usage.

Tablets: With bigger batteries, tablets often last longer per charge, making them excellent for long work sessions or binge-watching.

👉 Verdict: Tablets generally have longer battery life, but phones charge faster and are more convenient for all-day use.

4. Entertainment & Gaming
Mobile Phones: While great for casual gaming and streaming, the smaller screen limits immersion.

Tablets: The larger display makes watching movies, gaming, and reading e-books much more enjoyable.

👉 Verdict: For entertainment, tablets offer a better experience.

5. Calling & Communication
Mobile Phones: Designed for calls, texts, and instant communication, smartphones are essential for staying connected anywhere.

Tablets: Some tablets support SIM cards, but they are not as practical for calls due to their size.

👉 Verdict: If communication is key, mobile phones are the obvious choice.

Final Verdict: Which One Should You Choose?
Choose a Mobile Phone if you need a portable, always-accessible device for communication, social media, and quick tasks.

Choose a Tablet if you want a larger screen for work, media consumption, or gaming while sacrificing portability.

Conclusion
Both devices have their strengths. If you prioritize convenience, a smartphone is the best choice. If you need a larger screen for work and entertainment, a tablet is worth considering. Some people even use both for different needs!
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
