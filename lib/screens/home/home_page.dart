// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710473';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    return Container(
      width: 200,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Reduce the border radius
        border: Border.all(
          color: Colors.black,
          width: 3.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(8.0), // Adjust the padding as needed
                child: Text(
                  'Question 1 of 30',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 15.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add spacing
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 110, 184, 151), // สีพื้นหลัง
              border: Border.all(
                color: Colors.black,
                width: 1.0, // ปรับความหนาขอบเส้นตามต้องการ
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0), // ปรับรูปร่างขอบเส้นตามต้องการ
              ),
            ),
            padding:
                EdgeInsets.all(8.0), // ปรับการเว้นระยะห่างของข้อความตามต้องการ
            child: Text(
              'What is the capition of France ?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          SizedBox(height: 16.0), // Add spacing
          // You can add an answer input field here
          SizedBox(height: 16.0), // Add spacing
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)), // Adjust the border radius as needed
            ),
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: Text(
              '1️⃣ Berlin                                               ',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          SizedBox(height: 16.0), // Add spacing
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)), // Adjust the border radius as needed
            ),
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: Text(
              '2️⃣ London                                           ',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          SizedBox(height: 16.0), // Add spacing
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)), // Adjust the border radius as needed
            ),
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: Text(
              '3️⃣ Madrid                                            ',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          SizedBox(height: 16.0), // Add spacing
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(8.0)), // Adjust the border radius as needed
            ),
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: Text(
              '4️⃣ Paris                                           ✔️',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.redAccent,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60.0),
              child: Text(
                '<',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.greenAccent,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60.0),
              child: Text(
                '>',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
