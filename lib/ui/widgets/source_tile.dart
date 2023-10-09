import 'package:flutter/material.dart';

class SourceTile extends StatelessWidget {
  const SourceTile({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: add on tap action
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Text(
        name,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSecondaryContainer),
      ),
    );
  }
}
