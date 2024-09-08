import 'package:flutter/material.dart';
import 'save_email.dart';
import 'dashboard.dart'; // Import your Dashboard screen

class HomeScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController(); // Controller for name
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController, // Name input field
              decoration: InputDecoration(labelText: 'Enter your name'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Enter your email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Enter your password'),
              obscureText: true, // To hide the password input
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  // Call the function with name, email, and password
                  await saveEmailAndPassword(
                    _nameController.text.trim(), // Pass name
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                  );
                  
                  // Navigate to the Dashboard if sign-up is successful
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString())),
                  );
                }
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
