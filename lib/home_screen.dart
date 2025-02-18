import 'package:flutter/material.dart';
import 'form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50, // Soft background color
      appBar: AppBar(
        title: const Text('HOME'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, // Moves content towards the top
          children: [
            // Welcome Message
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            // Brief Instructions
            Text(
              'If you want to register your Name, Email, and Phone number, '
                  'click the button below to proceed.',
              style: TextStyle(fontSize: 18, color: Colors.black87),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // Register Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700, // Button color
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                'Go to Form',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
