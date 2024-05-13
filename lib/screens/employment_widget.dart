import 'package:cs442_mp1/models/profile.dart';
import 'package:flutter/material.dart';

// Widget to display work experience of the professional
class EmploymentWidget extends StatelessWidget {
  const EmploymentWidget({
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
              'Experience',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.add_circle_outline_sharp, size: 14),
          ]),
          const SizedBox(height: 10),
          SizedBox(
              height: 280,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: pro.employmentDetails.length,
                itemBuilder: (context, index) {
                  return Row(children: [
                    SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(pro.employmentDetails[index].imagePath,
                              width: 50, height: 50)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pro.employmentDetails[index].title,
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 110, 109, 109),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${pro.employmentDetails[index].companyName} . ${pro.employmentDetails[index].employmentType}',
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Color.fromARGB(255, 110, 109, 109),
                            ),
                          ),
                          Text(
                            '${pro.employmentDetails[index].startDate} - ${pro.employmentDetails[index].endDate}',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey[500],
                            ),
                          ),
                          Text(
                            '${pro.employmentDetails[index].companylocation.city}, ${pro.employmentDetails[index].companylocation.state}, ${pro.employmentDetails[index].companylocation.country}',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ]);
                },
              ))
        ]));
  }
}
