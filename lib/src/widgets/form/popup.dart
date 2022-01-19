import 'package:flutter/material.dart';

class PopupOption {
  final Widget icon;
  final String label;
  PopupOption({required this.icon, required this.label});
}

// TODO backgroundColor, padding, margin, inkWell,
class Popup extends StatelessWidget {
  const Popup({
    required this.icon,
    required this.onSelected,
    required this.initialValue,
    required this.options,
    Key? key,
  }) : super(key: key);

  final Widget icon;
  final void Function(String) onSelected;
  final String initialValue;
  final Map<String, PopupOption> options;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      child: icon,
      onSelected: onSelected,
      initialValue: initialValue,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        for (final k in options.keys)
          PopupMenuItem(
            value: k,
            child: ListTile(
              leading: options[k]!.icon,
              title: Text(options[k]!.label),
            ),
          ),
      ],
    );
  }
}
