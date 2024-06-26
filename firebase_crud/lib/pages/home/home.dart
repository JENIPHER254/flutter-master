import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud/widgets/appbar_text/appbar_text.dart';
import 'package:firebase_crud/widgets/button/button.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? studentName, studentID, programmID, studentEmail;
  double? studentGPA;

  getStudentName(String name) {
    this.studentName = name;
    print(name);
  }

  getStudentEmail(String email) {
    this.studentEmail = email;
    print(email);
  }

  getStudentID(String studentID) {
    this.studentID = studentID;
    print(studentID);
  }

  getProgrammID(String programmID) {
    this.programmID = programmID;
    print(programmID);
  }

  getStudentGPA(String studentGPA) {
    double gpa = double.parse(studentGPA);
    this.studentGPA = gpa;
    print(studentGPA);
  }

  createStudentData() {
    // aligning the path
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("myStudent").doc(studentEmail);
    // create Map
    Map<String, dynamic> student = {
      "studentName": studentName,
      "studentEmail": studentEmail,
      "studentID": studentID,
      "programID": programmID,
      "studentGPA": studentGPA
    };

    // Setting data to Firestore and handling completion and error cases
    documentReference.set(student).then((_) {
      // This block executes when the operation completes successfully
      print("$studentName created");
    }).catchError((error) {
      // This block executes if an error occurs during the operation
      print("Error creating $studentName: $error");
    });

    Navigator.pushNamed(context, "/");
    print('creat button');
  }

  deleteStudentData() {
    // geting the record
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("myStudent").doc(studentEmail);

    documentReference.delete().whenComplete(() {
      print("$studentName deleted");
    });
    Navigator.pushNamed(context, "/");
    print('deleted');
  }

  updateStudentData() {
    // get data to be updated
    DocumentReference dcoumentReference =
        FirebaseFirestore.instance.collection("myStudent").doc(studentEmail);

    //mapping to database
    Map<String, dynamic> details = {
      "studentName": studentName,
      "studentEmail": studentEmail,
      "studentID": studentID,
      "programID": programmID,
      "studentGPA": studentGPA
    };

    //updating the data
    dcoumentReference.set(details).whenComplete(() {
      print("$studentName updated");
    });
    Navigator.pushNamed(context, "/");
    print('updated');
  }

  readStudentData() {
    // getting the record
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection("myStudent").doc(studentEmail);

    documentReference.get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        // mapping out the associative array
        var data = documentSnapshot.data() as Map<String, dynamic>?;
        if (data != null) {
          var student = data['studentName'];
          var email = data['studentEmail'];
          var studentID = data['studentID'];
          var gpa = data['studentGPA'];
          var programID = data['PprogramID'];

          if (student != null) {
            print(student);
          } else {
            print("student name is null!");
          }
          if (email != null) {
            print(email);
          } else {
            print("email name is null!");
          }
          if (studentID != null) {
            print(studentID);
          } else {
            print("StudentID  is null!");
          }
          if (programID != null) {
            print(programID);
          } else {
            print("ProgramID  is null!");
          }
          if (gpa != null) {
            print(gpa);
          } else {
            print("StudentGPA  is null!");
          }
        } else {
          print("Document data is null");
        }
      } else {
        print("Student Does not Exist");
      }
    });
    Navigator.pushNamed(context, "/");
    print('read button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            appbar_text("Flutter", Colors.cyan),
            appbar_text("Firebase", Colors.orange),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String email) {
                    getStudentEmail(email);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String name) {
                    getStudentName(name);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Student ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String studentID) {
                    getStudentID(studentID);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Study Program ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String programmID) {
                    getProgrammID(programmID);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "GPA",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.cyan, width: 2),
                    ),
                  ),
                  onChanged: (String studentGPA) {
                    getStudentGPA(studentGPA);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myButton("create", Colors.green, () {
                    createStudentData();
                  }),
                  myButton("read", Colors.blue, () {
                    readStudentData();
                  }),
                  myButton("update", Colors.orange, () {
                    updateStudentData();
                  }),
                  myButton("delete", Colors.red, () {
                    deleteStudentData();
                  }),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              FutureBuilder<QuerySnapshot>(
                future:
                    FirebaseFirestore.instance.collection("myStudent").get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(); // Display loading indicator while data is fetched
                  }
                  if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Text("No data found");
                  }
                  return ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      var data = document.data() as Map<String, dynamic>;
                      return ListTile(
                        title: Column(
                          children: [
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text(
                                  "Student Name:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                                Expanded(
                                    child: Text("${data['studentName']}",
                                        style: TextStyle(fontSize: 14))),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text(
                                  "Student Email:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                                Expanded(
                                    child: Text("${data['studentEmail']}",
                                        style: TextStyle(fontSize: 14))),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text(
                                  "Student ID:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                                Expanded(
                                    child: Text("${data['studentID']}",
                                        style: TextStyle(fontSize: 14))),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text(
                                  "ProgramID:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                                Expanded(
                                    child: Text("${data['studentGPA']}",
                                        style: TextStyle(fontSize: 14))),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                        subtitle: Text(""),
                        onTap: () {
                          // Handle tap event if needed
                        },
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
