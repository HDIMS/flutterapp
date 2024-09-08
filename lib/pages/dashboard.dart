import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/ad_patient.dart';
import 'package:flutterapp/pages/update_patient.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? userName; // Store the user's name

  @override
  void initState() {
    super.initState();
    _fetchUserName();
  }

  Future<void> _fetchUserName() async {
    try {
      // Get the current user ID
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        // Fetch the user's name from Firestore
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser.uid)
            .get();

        setState(() {
          userName = userDoc['name']; // Set the fetched name
        });
      }
    } catch (e) {
      print('Error fetching user name: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final double varHeight = MediaQuery.of(context).size.height;
    final double varWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sign Out'),
              onTap: () {
                // Add sign-out functionality here
                Navigator.of(context).pop(); // Close the drawer
                // Implement your sign-out logic here
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Icon to open the drawer when tapped
          Positioned(
            top: 40, // Adjust the top padding if necessary
            left: 30, // Adjust the left padding if necessary
            child: Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer(); // Open the drawer when tapped
                },
                child: Image.asset(
                  'lib/assets/guy1.png',
                  width: 70, // Adjust the size of the image as needed
                  height: 70,
                ),
              ),
            ),
          ),
          // Displaying the user's name below the icon
          Positioned(
            top: 130, // Adjust the top padding to place the text below the icon
            left: 20,
            child: Text(
              userName != null ? ' $userName\n Chennai' : 'Fetching name...',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 250,
                child: Padding(
                  padding: EdgeInsets.only(left: 250, top: 40),
                  child: Text(
                    "Helth-ledger",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddPatient();
                  }));
                },
                child: Center(
                  child: Container(
                    height: varHeight * 0.16,
                    width: varWidth * 0.9,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2BEF8),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Text(
                        "Add Patient",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UpdatePatient();
                  }));
                },
                child: Center(
                  child: Container(
                    height: varHeight * 0.16,
                    width: varWidth * 0.9,
                    decoration: BoxDecoration(
                      color: const Color(0xffAAE9E4),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Text(
                        "Update Patient",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  height: varHeight * 0.16,
                  width: varWidth * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1ABB1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 30, top: 50),
                    child: Text(
                      "Delete Patient",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  height: varHeight * 0.16,
                  width: varWidth * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1E4AB),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 30, top: 50),
                    child: Text(
                      "View Patient",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
