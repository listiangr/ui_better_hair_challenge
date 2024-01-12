import 'package:flutter/material.dart';
import 'dart:ui';

class genLoginSignupHeader extends StatelessWidget {
  String headerName;

  genLoginSignupHeader(this.headerName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Text(headerName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40.0),
          ),
          SizedBox(height: 10.0),
          Image.asset("assets/images/logo.png",
            height: 150.0,
            width: 150.0,
          ),
          SizedBox(height: 10.0)
        ],
      ),
    );
  }
}