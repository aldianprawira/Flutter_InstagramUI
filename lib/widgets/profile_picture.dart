import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.red,
                  Colors.orange,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(85),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: const DecorationImage(
                image: AssetImage("images/pp.jpg"),
              ),
              borderRadius: BorderRadius.circular(80),
              border: Border.all(
                color: Colors.white,
                width: 2.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
