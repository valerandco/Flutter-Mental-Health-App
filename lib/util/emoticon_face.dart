import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {

  final String emticonFace;

  const EmoticonFace({
    Key? key,
    required this.emticonFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emticonFace,
          style: TextStyle(fontSize: 28,) ,
        ),
      ),
    );
  }
}

