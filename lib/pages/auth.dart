import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<void> saveEmail(String email) async {
  // Validate the email format
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
    throw Exception('Invalid email format');
  }

  try {
    // Optional: Create a user with email and password for authentication
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: 'temporaryPassword123', // Use a secure password in production
    );

    // Save the email to Firestore
    await _firestore.collection('users').doc(userCredential.user?.uid).set({
      'email': email,
      'createdAt': FieldValue.serverTimestamp(),
    });

    print('Email saved successfully.');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    } else {
      print('Error: ${e.message}');
    }
  } catch (e) {
    print('Error saving email: $e');
  }
}
