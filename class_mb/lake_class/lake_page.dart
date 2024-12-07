import 'package:flutter/material.dart';
import 'title_section.dart';
import 'button_section.dart';
import 'text_section.dart';
import 'image_section.dart';

class Mainlake extends StatelessWidget {
  const Mainlake({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text(appTitle),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const ImageSection(
                  image: 'images/lake.jpg',
                ),
                const TitleSection(
                  name: 'Oeschinen Lake Campground',
                  location: 'Kandersteg, Switzerland',
                ),
                const ButtonSection(),
                const TextSection(
                  description:
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                      'Bernese Alps. Situated 1,578 meters above sea level, it '
                      'is one of the larger Alpine Lakes. A gondola ride from '
                      'Kandersteg, followed by a half-hour walk through pastures '
                      'and pine forest, leads you to the lake, which warms to 20 '
                      'degrees Celsius in the summer. Activities enjoyed here '
                      'include rowing, and riding the summer toboggan runxx.',
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("BACk")),
              ],
            ),
          ),
        ));
  }
}
