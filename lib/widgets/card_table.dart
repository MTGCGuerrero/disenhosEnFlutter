import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all_outlined,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.pink,
              icon: Icons.cabin_outlined,
              text: 'Transport',
            ),
            _SingleCard(
              color: Colors.cyan,
              icon: Icons.phone_android,
              text: 'Hola2',
            ),
            _SingleCard(
              color: Colors.cyan,
              icon: Icons.phone_android,
              text: 'Hola2',
            ),
            _SingleCard(
              color: Colors.cyan,
              icon: Icons.phone_android,
              text: 'Hola2',
            )
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 35,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ]),
    );
  }
}
