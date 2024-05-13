import 'package:cs442_mp1/models/profile.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    super.key,
    required this.pro,
  });

  final Profile pro;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(shrinkWrap: true, children: [
              const Text(
                'Activity',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: pro.activities.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                pro.activities[index].activity,
                                style: const TextStyle(fontSize: 12),
                              ),
                              subtitle: Text(pro.activities[index].description,
                                  style: const TextStyle(fontSize: 10)),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
            ])));
  }
}
