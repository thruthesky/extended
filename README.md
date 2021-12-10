# Extended

- A set of handy widgets and functions that are extended based on Material and Cupertino widgets. Some of widgets in this package are simply a copy of an existing widgets in Material and Cupertino widgets with additional properties.
For instance, `Column` widget does column thing only. It does not have background color, tap handler, and we often need to wrap with additional widgets to have those functionalities on `Column`. This is one reason why we have `Extended` package here. `Extended` package also provide some functions like openning dialogs, downloading & caching files.

- `Extended` package depends on some of the best widgets in `pub.dev` to extend its functionalities.


## Features

### Common properties

- All the extended widgets have as much as the common properties like below.
    - color, 
    - backgroundColor,
    - borderColor,
    - borderRadius,
    - margin,
    - padding,
    - size,
    - width,
    - height,
    - tap, 
    - long press,
    - double tap
    

- See the example codes and try to open the source file in the paackage. It will surely gives you an idea how the `Extended` widgets are built, and how to use.


- All images provided by with URL will be cached with `cached_network_image`.

## Getting started

Just add the package name and version into your pubspec.yaml

## Usage

### Boxes

- There are some box widget.
- `RedBox`, `GreenBox`, `BlueBox`



### GradientCard



### TappableRow

- `TappableRow` has flex option.
  - `TappableRow(children: [ RedBox(), GreenBox(), BlueBox() ], flexes: [1,2,3])`



![Tappable Column](https://github.com/thruthesky/extended/raw/main/res/tappable_column.jpg)

```dart
TappableRow(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  margin: const EdgeInsets.all(16),
  padding: const EdgeInsets.all(16),
  backgroundColor: Colors.black,
  borderRadius: 16,
  borderWidth: 5.5,
  borderColor: Colors.blueGrey,
  children: const [RedBox(), GreenBox(), BlueBox()],
  onTap: () => alert(context, 'onTap', 'tapped'),
  onDoubleTap: () => alert(context, 'onDoubleTap', 'double tapped'),
  onLongPress: () => alert(context, 'onLongPress', 'long press'),
),
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.


## TODO list


- 