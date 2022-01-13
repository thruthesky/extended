import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class GradientCardScreen extends StatelessWidget {
  const GradientCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg/220px-Eq_it-na_pizza-margherita_sep2005_sml.jpg",
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient Card'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text('Default'),
              const SizedBox(height: 4),
              GradientCard(
                child: image,
                title: 'Default gradient card.',
                onTap: () => alert("Gradient Card", "ON TAP"),
                onLongPress: () => alert("Gradient Card", "ON LONG PRESS"),
                onDoubleTap: () => alert("Gradient Card", "ON DOUBLE TAP"),
              ),
              const Divider(thickness: 1),
              const Text('With grey title background and additional overlays.'),
              const SizedBox(height: 4),
              GradientCard(
                child: image,
                title:
                    'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough',
                titleWidthFactor: 1,
                titleMaxLines: 2,
                onTap: () => alert('Gradient Card', "Card Tapped!"),
                gradientColors: const [Colors.grey, Colors.transparent],
                overlays: const [
                  Positioned(
                    child: Icon(Icons.open_in_browser, color: Colors.blueGrey),
                    top: 10,
                    left: 10,
                  ),
                  Positioned(
                    child:
                        Icon(Icons.open_in_new_sharp, color: Colors.redAccent),
                    top: 10,
                    right: 10,
                  ),
                ],
              ),
              const Divider(thickness: 1),
              const Text('With grey title background and green box as child.'),
              const SizedBox(height: 4),
              GradientCard(
                child: const GreenBox(height: 200, width: 200),
                title:
                    'Gradient card, 2 lines, grey transparent gradient, 1234 abcdefg.',
                titleMaxLines: 2,
                onTap: () => alert('Gradient Card', "Card Tapped!"),
                gradientColors: const [Colors.grey, Colors.transparent],
              ),
              const Divider(thickness: 1),
              const Text('Child and url property is provided.'),
              const SizedBox(height: 4),
              const GradientCard(
                child: GreenBox(height: 200, width: 200),
                url:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg/220px-Eq_it-na_pizza-margherita_sep2005_sml.jpg",
                title:
                    'Gradient card, 2 lines, grey transparent gradient, 1234 abcdefg.',
                titleMaxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
