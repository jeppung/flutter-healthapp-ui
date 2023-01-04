import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  HealthNeeds({super.key});

  List<CustomIcon> customIcons = const [
    CustomIcon(icon: "assets/appointment.png", name: "Appointment"),
    CustomIcon(icon: "assets/hospital.png", name: "Hospital"),
    CustomIcon(icon: "assets/virus.png", name: "Covid-19"),
    CustomIcon(icon: "assets/more.png", name: "More"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            const SizedBox(height: 6.0),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;

  const CustomIcon({
    required this.icon,
    required this.name,
  });
}
