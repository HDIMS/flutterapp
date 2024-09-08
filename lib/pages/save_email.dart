import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Initialize Firebase Auth and Firestore
final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Function to validate, save, and register name, email, and password
Future<void> saveEmailAndPassword(String name, String email, String password) async {
  // Validate the email format
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
    throw Exception('Invalid email format');
  }

  // Validate password (minimum 6 characters, add more rules if needed)
  if (password.length < 6) {
    throw Exception('Password must be at least 6 characters long');
  }

  try {
    // Create a user with the email and password
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password, // Use the provided password
    );

    // Save the name, email, and password (optional) to Firestore
    await _firestore.collection('users').doc(userCredential.user?.uid).set({
      'name': name, // Save name
      'email': email,
      'createdAt': FieldValue.serverTimestamp(),
      // You might not want to store the password in Firestore for security reasons.
    });

    print('Name, Email, and Password saved successfully.');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    } else {
      print('Error: ${e.message}');
    }
  } catch (e) {
    print('Error saving name, email, and password: $e');
  }
}
