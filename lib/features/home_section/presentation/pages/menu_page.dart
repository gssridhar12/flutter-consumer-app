import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/location_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/settings_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/view_profile_page.dart';
import '../../../../main.dart';
import '../../../../utils/navigation.dart';
import '../../../auth_section/presentation/pages/login_or_signup_page.dart';
import 'become_partner/become_a_partner.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final bool isGuestUser;
  late final String userName;

  @override
  void initState() {
    super.initState();
    // Initialize localDb values safely
    isGuestUser = localDb.getBool('isGuestUser') ?? true;
    userName = localDb.getString('fullName')?.trim().isNotEmpty == true
        ? localDb.getString('fullName')!
        : "Pawrent";
  }

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = !isGuestUser;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Avatar + Name + Login/Signup
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.teal.shade200,
              child: Text(
                userName.isNotEmpty ? userName[0].toUpperCase() : "P",
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              userName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                !isGuestUser
                    ? AppNavigation.pushNavigation(
                    context, const ViewProfilePage())
                    : AppNavigation.pushNavigation(
                    context, const LoginOrSignUpPage());
              },
              child: Text(
                isLoggedIn ? "Edit Profile" : "Login or Signup",
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Register as Partner Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const BecomeAPartner()
                  ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 4,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Center(
                  child: Text(
                    "Register as a Partner!",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Divider(thickness: 1, indent: 24, endIndent: 24),
            const SizedBox(height: 10),

            // Settings
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()
                  ),
                );


              },
            ),

            // Help Centre
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text("Help Centre"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocationPage()
                  ),
                );
              },
            ),

            const Spacer(),

            // Footer with version info
            const Divider(thickness: 1),
            const SizedBox(height: 6),
            const Text("Wigglypet v0.1.0.0", style: TextStyle(fontSize: 12)),
            const Text("© 2025 SniffinTails Tech Pvt. Ltd.", style: TextStyle(fontSize: 12)),
            const Text("All Rights Reserved.", style: TextStyle(fontSize: 12)),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
