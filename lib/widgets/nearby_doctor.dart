import 'package:flutter/material.dart';
import 'package:flutter_health_app/models/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctor extends StatelessWidget {
  const NearbyDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(nearbyDoctors[index].profile),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. ${nearbyDoctors[index].name}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(nearbyDoctors[index].position),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        size: 18,
                        color: Colors.yellow[700],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          nearbyDoctors[index].averageReview.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("(${nearbyDoctors[index].totalReview})")
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
