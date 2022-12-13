import 'package:flutter/material.dart';
import 'package:movies_app/theme/colors.theme.dart';

class MovieTitle extends StatelessWidget {
  final String title;

  const MovieTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: ColorsApp.primary,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "4K",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ),
      ],
    );
  }
}
