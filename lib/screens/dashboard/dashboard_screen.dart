import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:msf/main.dart';
import '../component/Header.dart';
import 'component/CircleChar.dart';
import 'sections/Dashboard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column( 
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Line1(),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Dashboard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

