import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  const Author({super.key, required this.name, required this.imagePath});
  final String name;
  final String imagePath;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(height: 150, width: 150, image: AssetImage(imagePath)),
        Flexible(
          child: Text(
            name,
            style: optionStyle,
          ),
        )
      ],
    );
  }
}

class AboutUsText extends StatelessWidget {
  const AboutUsText({super.key, required this.text});
  final String text;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            text,
            style: optionStyle,
          ),
        )
      ],
    );
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: const [
          AboutUsText(
            text: 'Fizemos pq...',
          ),
          Spacer(),
          AboutUsText(
            text: 'Sem propaganda! Se puder ajuda em...',
          ),
          Spacer(),
          Author(
            name: 'Diogo',
            imagePath: 'assets/images/diogo.jpeg',
          ),
          Spacer(),
          Author(
            name: 'Rodrigo',
            imagePath: 'assets/images/rodrigo.jpg',
          ),
        ]));
  }
}
