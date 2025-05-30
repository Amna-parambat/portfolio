import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buildheader extends StatefulWidget {
  const Buildheader({super.key});

  @override
  State<Buildheader> createState() => _BuildheaderState();
}

class _BuildheaderState extends State<Buildheader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Amna Parambat",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "Diploma in Computer Engineering Student",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue[300],
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue.withOpacity(0.5)),
            ),
            child: Text(
              "Final Year Student",
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
