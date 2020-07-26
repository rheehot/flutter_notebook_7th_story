import 'package:flutter/material.dart';

class TopBadgesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
