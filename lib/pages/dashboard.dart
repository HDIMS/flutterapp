import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final double varHeight = MediaQuery.of(context).size.height;
    final double varWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 250, 
            child: Padding(
              padding: EdgeInsets.only(left: 200,top:120),
              child: Text("Helth-ledger",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
            ),    
          ),
          Center(
            child: Container(
              height: varHeight * 0.15,
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
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: varHeight * 0.15,
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
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: varHeight * 0.15,
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
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: varHeight * 0.15,
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
    );
  }
}
