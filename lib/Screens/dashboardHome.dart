import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 150.0,
              color: Colors.green,
              alignment: Alignment.center,
              child: const DecoratedBox(decoration: BoxDecoration(color: Colors.green), child: Text("Header")),
            ),

            //Body Container
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 50.0,
                      alignment: Alignment.center,
                      child: Text("labels"),
                    ),
                    Container(
                      height: 650.0,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text("buttons"),
                    ),
                  ],
                ),
              ),
            ),

            //Footer Container
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 100.0,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("Footer"),
            ),
          ],
        ),
      ),
    );
  }
}