import 'package:cs442_mp1/models/profile.dart';
import 'package:flutter/material.dart';

// Widget to display education details of the professional
class EducationWidget extends StatelessWidget {
  const EducationWidget({
    super.key,
    required this.pro,
  });

  final Profile pro;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: ListView(shrinkWrap: true, children: [
          const Row(children: [
            Text(
              'Education',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.add_circle_outline_sharp, size: 14),
          ]),
          const SizedBox(height: 10),
          SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: pro.education.length,
                itemBuilder: (context, index) {
                  return Row(children: [
                    SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            pro.education[index].schoolLogo,
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pro.education[index].schoolName,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 110, 109, 109),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          pro.education[index].degree,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          pro.education[index].gpa.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ))
                  ]);
                },
              ))
        ]));
  }
}
