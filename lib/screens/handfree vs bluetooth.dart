import 'package:flutter/material.dart';
import 'Blog.dart';

class handfree extends StatelessWidget {
  final List<Map<String, String>> blogs = [
    {
      'title': 'Handfree"s vs Bluetooth Earbuds',
      'description': 'Struggling to choose between wired handfrees and Bluetooth earbuds? Let’s break down the battle of sound, convenience, and durability to find your perfect fit! ',
      'image': 'assets/images/hd_vs_bt.jpg',
      'content': '''When it comes to personal audio devices, two popular options are wired earphones (often referred to as "handfrees") and Bluetooth earbuds. Each offers distinct advantages and drawbacks, making the choice between them dependent on individual preferences and use cases.
      
      Sound Quality:
      
      Wired earphones typically deliver superior sound quality compared to their wireless counterparts. This is because wired connections can transmit audio signals without the compression that often occurs with Bluetooth transmission. As noted by SoundGuys, Bluetooth lacks the bandwidth to match the performance ceiling of wired headphones.
      
      Convenience and Mobility:
      
      Bluetooth earbuds excel in providing mobility and convenience. They eliminate the need for cables, allowing users to move freely without the risk of tangled or caught wires. This makes them particularly suitable for activities like exercising or commuting. However, it's important to consider battery life, as wireless devices require regular charging.
      
      Durability and Longevity:
      
      Wired earphones often have a longer lifespan due to their simpler design, which lacks batteries and complex electronic components. This simplicity can contribute to greater durability over time. Tom's Guide highlights that wired headphones are more durable than wireless ones because they use fewer components.
      
      Compatibility:
      
      Wired earphones connect directly to devices via a headphone jack or adapter, ensuring a stable connection. However, with the increasing trend of smartphone manufacturers omitting headphone jacks, using wired earphones may require additional adapters, which can be inconvenient. On the other hand, Bluetooth earbuds are compatible with any Bluetooth-enabled device, offering broader compatibility without the need for physical connectors.
      
      Latency and Performance:
      
      Latency—the delay between audio output and input—can be an issue with Bluetooth earbuds, especially noticeable when watching videos or gaming. Wired earphones generally have negligible latency, providing a more synchronized audio-visual experience.
      
      Conclusion:
      
      Choosing between wired earphones and Bluetooth earbuds depends on personal priorities. If sound quality and durability are paramount, wired earphones may be the preferable choice. Conversely, for those valuing convenience and mobility, Bluetooth earbuds offer a compelling option. Assessing individual needs and considering the factors outlined above can guide users to the most suitable choice for their lifestyle.

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
