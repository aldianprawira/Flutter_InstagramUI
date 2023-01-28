import 'package:flutter/material.dart';

class StoryHighlight extends StatelessWidget {
  const StoryHighlight({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 67.5,
                height: 67.5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(67.5),
                ),
              ),
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://picsum.photos/seed/picsum/200/300"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(65),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.5,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
