import 'package:flutter/material.dart';

class PopupOption {
  final Widget icon;
  final String label;
  PopupOption({required this.icon, required this.label});
}

class Popup extends StatelessWidget {
  const Popup({
    required this.icon,
    required this.onSelected,
    required this.initialValue,
    required this.options,
    this.padding = const EdgeInsets.all(8),
    this.margin,
    this.decoration,
    Key? key,
  }) : super(key: key);

  final Widget icon;
  final void Function(String) onSelected;
  final String initialValue;
  final Map<String, PopupOption> options;

  final EdgeInsets padding;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      child: InkWell(
        child: Container(
          margin: margin,
          padding: padding,
          decoration: decoration,
          child: icon,
        ),
      ),
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
