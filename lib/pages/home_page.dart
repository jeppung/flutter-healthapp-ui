import 'package:flutter/material.dart';
import 'package:flutter_health_app/widgets/health_needs.dart';
import 'package:flutter_health_app/widgets/nearby_doctor.dart';
import 'package:flutter_health_app/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi Jane"),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          // upcoming card
          const UpcomingCard(),
          const SizedBox(height: 20),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),

          // Health needs
          HealthNeeds(),
          const SizedBox(height: 30),
          Text(
            "Nearby Doctors",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),

          // Nearby doctors
          const NearbyDoctor()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_outline), label: "Calender"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.chatbubble_ellipses_outline), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
