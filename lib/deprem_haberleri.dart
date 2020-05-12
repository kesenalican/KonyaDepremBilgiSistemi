import 'package:flutter/material.dart';

class DepremHaberleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deprem Haberleri",
          style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Burası deprem haberlerinin olduğu yer"),
          ],
        ),
      ),
    );
  }
}
