import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({super.key});

  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient>{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController pinController=TextEditingController();
  final TextEditingController bloodController=TextEditingController();
  final TextEditingController medicalHistoryController=TextEditingController();
  final TextEditingController vaccinationController=TextEditingController();
  final TextEditingController currentMedicationController=TextEditingController();
  final TextEditingController familyHistoryController=TextEditingController();
  final TextEditingController allergiesController=TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    ageController.dispose();
    genderController.dispose();
    addressController.dispose();
    pinController.dispose();
    bloodController.dispose();
    medicalHistoryController.dispose();
    vaccinationController.dispose();
    currentMedicationController.dispose();
    familyHistoryController.dispose();
    allergiesController.dispose();
    super.dispose();
  }

  // Method to handle the 'Add Patient' action
  void addPatient() {
    // Access the values from the text controllers
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;
    String age = ageController.text;
    String gender = genderController.text;
    String address= addressController.text;
    String pin= pinController.text;
    String blood= bloodController.text;
    String medicalHistory= medicalHistoryController.text;
    String vaccination= vaccinationController.text;
    String currentMedication= currentMedicationController.text;
    String familyHistory= familyHistoryController.text;
    String allergies=allergiesController.text;
    // Example: Convert to JSON format (here it's just a Map)
    Map<String, String> patientData = {
      'name': name,
      'email': email,
      'phone': phone,
      'age': age,
      'gender': gender,
      'address': address,
      'pin':pin,
      'blood':blood,
      'medical history':medicalHistory,
      'vaccination':vaccination,
      'current medication':currentMedication,
      'family history':familyHistory,
      'allergies':allergies,
    };

    // print(patientData);
  }
  Widget build(BuildContext context) {
    final double varheight=MediaQuery.of(context).size.height;
    final double varwidth=MediaQuery.of(context).size.width;

    return  Scaffold(
      backgroundColor: Color(0xffF2BEF8),

      //TextFields
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 48,right: 100,left: 20),
              child:
              Text('Enter Patient Details',
                style:TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.left,
              ),
              height:varheight*0.3 ,
              decoration: BoxDecoration(
                color: Color(0xffF2BEF8),
              ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     SvgPicture.asset('assets/palmtree.svg',height: 50,width: 50),
              //   ],
              // ),
            ),
            // SingleChildScrollView(
              Container(
                height: varheight*1.63,
                margin:EdgeInsets.only(top:10),
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff1D1617).withOpacity(0.11),
                        blurRadius: 40,
                        spreadRadius: 0.0,
                      )
                    ]
                ),
                // padding:EdgeInsets.only(bottom: 200),
                child:Column(
                  children: [
                    Container(
                        margin:EdgeInsets.only(top:20,left:20,right:20),
                        decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                  color:Color(0xff1D1617).withOpacity(0.11),
                                  blurRadius: 40,
                                  spreadRadius: 0.0
                              )
                            ]
                        ),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF2BEF8),
                              contentPadding: EdgeInsets.all(25),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                              )
                          ),
                        )
                    ),
                    Container(
                        margin:EdgeInsets.only(top:20,left:20,right: 20),
                        decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                  color:Color(0xff1D1617).withOpacity(0.11),
                                  blurRadius: 40,
                                  spreadRadius: 0.0
                              )
                            ]
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF2BEF8),
                              contentPadding: EdgeInsets.all(25),
                              hintText: 'Email Id',
                              hintStyle: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                              )
                          ),
                        )
                    ),
                    Container(
                        margin:EdgeInsets.only(top:20,left:20,right: 20),
                        decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                  color:Color(0xff1D1617).withOpacity(0.11),
                                  blurRadius: 40,
                                  spreadRadius: 0.0
                              )
                            ]
                        ),
                        child: TextField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF2BEF8),
                              contentPadding: EdgeInsets.all(25),
                              hintText: 'Phone No.',
                              hintStyle: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                              )
                          ),
                        )
                    ),
                    Container(
                        margin:EdgeInsets.only(top:20,left:20,right: 20),
                        decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                  color:Color(0xff1D1617).withOpacity(0.11),
                                  blurRadius: 40,
                                  spreadRadius: 0.0
                              )
                            ]
                        ),
                        child: TextField(
                          controller: ageController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF2BEF8),
                              contentPadding: EdgeInsets.all(25),
                              hintText: 'Age',
                              hintStyle: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none
                              )
                          ),
                        )
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: genderController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Gender',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: addressController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Address',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: pinController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Pin',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: bloodController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Blood Group',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: medicalHistoryController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Medical History',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: vaccinationController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Vaccination',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: currentMedicationController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Undergoing Medications',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: familyHistoryController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Family medical history',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left:20,right: 20),
                      decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color:Color(0xff1D1617).withOpacity(0.11),
                                blurRadius: 40,
                                spreadRadius: 0.0
                            )
                          ]
                      ),
                      child: TextField(
                        controller: allergiesController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2BEF8),
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Allergies',
                          hintStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left: 20,right: 20),
                      width:double.infinity,
                      child: ElevatedButton(
                        onPressed: addPatient,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(22),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.black87,
                        ),
                        child: Text(
                          'Add Patient',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 100,
                    // )
                  ],
                ),


              ),

            // ),
          ],
        ),
      ),
    );
  }
}