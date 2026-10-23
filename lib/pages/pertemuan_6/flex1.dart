import 'package:flutter/material.dart';

class Flex1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              flex: 2,
              child: Container(width: 200, height: 200, color: Colors.red),
            ),
            Expanded(
              flex: 1,
              child: Container(width: 200, height: 200, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
