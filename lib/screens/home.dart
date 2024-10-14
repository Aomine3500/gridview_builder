import 'package:flutter/material.dart';

class Student {
  final String name;
  final String adresse;
  final String occupation;

  Student({
    required this.name,
    required this.adresse,
    required this.occupation,
  });
}

List<Student> students = [
  Student(name: "Ahmed", adresse: "Tunisia", occupation: "Developer"),
  Student(name: "Zayneb", adresse: "Iraq", occupation: "Dentist"),
  Student(name: "Omar", adresse: "Morocco", occupation: "Driver"),
  Student(name: "Thouraya", adresse: "Algeria", occupation: "Teacher"),
  Student(name: "Iyad", adresse: "Kuwait", occupation: "Barber"),
  Student(name: "Rim", adresse: "KSA", occupation: "Doctor"),
  Student(name: "Loay", adresse: "UAE", occupation: "Actor"),
  Student(name: "Atika", adresse: "Australia", occupation: "Attorney"),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text(
          "GridView Builder",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount:
            students.length, // Don't forget itemCount with the Builder option
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //required
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            mainAxisExtent: 300.0),
        itemBuilder: (BuildContext context, index) {
          return Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                students[index].name,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[400]),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "Adresse: ${students[index].adresse} \nOccupation: ${students[index].occupation}",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
