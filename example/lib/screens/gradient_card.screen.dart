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
              GradientCard(
                image: image,
                title: 'Default gradient card.',
              ),
              const Divider(),
              GradientCard(
                image: image,
                title: 'Gradient card, 2 lines, grey transparent gradient, 1234 abcdefg.',
                titleMaxLines: 2,
                onTap: () => alert(context, 'Gradient Card', "Card Tapped!"),
                gradientColors: const [Colors.grey, Colors.transparent],
              ),
              const Divider(),
              GradientCard(
                image: image,
                title:
                    'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough',
                titleWidthFactor: 1,
                titleMaxLines: 2,
                onTap: () => alert(context, 'Gradient Card', "Card Tapped!"),
                gradientColors: const [Colors.grey, Colors.transparent],
                overlays: const [
                  Positioned(
                    child: Icon(Icons.open_in_browser, color: Colors.blueGrey),
                    top: 10,
                    left: 10,
                  ),
                  Positioned(
                    child: Icon(Icons.open_in_new_sharp, color: Colors.redAccent),
                    top: 10,
                    right: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
