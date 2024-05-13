import 'package:cs442_mp1/models/profile.dart';
import 'package:flutter/material.dart';

// Widget to display skills of the professional
class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
    super.key,
    required this.pro,
  });

  final Profile pro;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(60),
          child: const Row(
            children: [
              Text(
                'Skills',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.add_circle_outline_sharp, size: 14),
            ],
          ),
        ),
        const SizedBox(height: 5.0), // Add some spacing below the heading
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 220,
                width: 220, // Specify the height of the GridView
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: pro.skills.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Image.asset(
                            pro.skills[index].logo,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            pro.skills[index].technology,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
