import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const Image(image: AssetImage('assets/landscape.jpg')),

          // titulo
          const Title(),

          //Button Section

          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text("Mollit do incididunt adipisicing est mollit adipisicing mollit proident esse duis laboris dolor sit. Do veniam id ullamco adipisicing minim cillum. Nulla ut ex aute mollit laborum ex adipisicing occaecat consequat reprehenderit. Amet proident cillum laborum anim cupidatat nulla occaecat cupidatat consectetur eu quis reprehenderit. Incididunt incididunt adipisicing fugiat tempor ut velit consectetur laborum eu commodo anim mollit mollit duis. Elit officia occaecat elit elit ipsum aute officia veniam ipsum proident nulla.")),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Oeschinen Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.black38)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call',),
          CustomButton(icon: Icons.map_sharp, text: 'Route',),
          CustomButton(icon: Icons.share, text: 'Share',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
