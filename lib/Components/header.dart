import 'package:flutter/material.dart';

// template for the display text in the app to keep format
class Header extends StatelessWidget {
  final bool isVisible;

  const Header ( {
    super.key,
    required this.isVisible
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
  children: <Widget>[
    const Expanded(
      child: Text('Deliver features faster', textAlign: TextAlign.center),
    ),
    Expanded(
      child: Image.asset('lib/Images/apples-2.png'),
    ),])
    );
  }
}