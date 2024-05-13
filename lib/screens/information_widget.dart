import 'package:cs442_mp1/models/profile.dart';
import 'package:flutter/material.dart';

// Widget to display basic information of the professional
class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
    required this.pro,
  });

  final Profile pro;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pro.name,
                  style: const TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(12, 12, 11, 1),
                  ),
                ),
                Text(
                  pro.headline,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 165, 5, 112),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.work,
                      size: 15,
                      color: Color.fromARGB(255, 102, 181, 250),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      pro.currentOrganization,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 165, 5, 112),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_city,
                      size: 15,
                      color: Color.fromARGB(255, 102, 181, 250),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${pro.location.city}, ${pro.location.state}, ${pro.location.country}',
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color.fromARGB(255, 165, 5, 112),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
