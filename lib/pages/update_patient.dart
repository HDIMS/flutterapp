import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
final _formKey=GlobalKey<FormState>();
class UpdatePatient extends StatefulWidget {
  const UpdatePatient({super.key});

  @override
  _UpdatePatientState createState() => _UpdatePatientState();
}

class _UpdatePatientState extends State<UpdatePatient>{
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
  void updatePatient() {
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
      backgroundColor: Color(0xffAAE9E4),

      //TextFields
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 48,right: 100,left: 20),
              child:
              Text('Update Patient Details',
                style:TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.left,
              ),
              height:varheight*0.3 ,
              decoration: BoxDecoration(
                color: Color(0xffAAE9E4),
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
              height: varheight*1.94,
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
              child:Form(
                key:_formKey,
                child: Column(
                  children: [
                  Container(
                    margin:EdgeInsets.only(top:20,left:20,right: 20),
                    child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffAAE9E4),
                    contentPadding: EdgeInsets.all(25),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty||!RegExp(r'[a-z A-Z]+$').hasMatch(value!)) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
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
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffAAE9E4),
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
                          validator: (value){
                            if(value!.isEmpty || !RegExp(r'^[\w-\,]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)){
                              return "Please enter correct email";
                            }else{
                              return null;
                            }
                          },
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
                        child: TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffAAE9E4),
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
                          validator: (value){
                            if(value!.isEmpty || !RegExp(r'^[0-9]{10}').hasMatch(value!)){
                              return "Enter correct phone no.";
                            }else{
                              return null;
                            }
                          },
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
                        child: TextFormField(
                          controller: ageController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffAAE9E4),
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
                          validator: (value){
                            if(value!.isEmpty ||!RegExp(r'[0-9]{2}').hasMatch(value)){
                              return "Enter valid age";
                            }else{
                              return null;
                            }
                          },
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
                      child: TextFormField(
                        controller: genderController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter Gender";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: addressController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter valid address";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: pinController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty||!RegExp(r'^[0-9]{6}').hasMatch(value)){
                            return "Enter valid pin";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: bloodController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty ||!RegExp(r'^(A|B|AB|O)\s(positive|negative)$').hasMatch(value)){
                            return "Enter valid blood group";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: medicalHistoryController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter medical history";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: vaccinationController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter valid vaccinations";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: currentMedicationController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter any undergoing medications";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: familyHistoryController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter family history";
                          }else{
                            return null;
                          }
                        },
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
                      child: TextFormField(
                        controller: allergiesController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffAAE9E4),
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
                        validator: (value){
                          if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                            return "Enter any allergies/none";
                          }else{
                            return null;
                          }
                        },
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(top:20,left: 20,right: 20),
                      width:double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            updatePatient();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(22),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.black87,
                        ),
                        child: Text(
                          'Update Patient',
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


            ),

            // ),
          ],
        ),
      ),
    );
  }
}