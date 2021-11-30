# Enhanced

`Enhanced` is an upgraded, handy widget collection based Material and Cupertino widgets.

## Features

All the enhanced widget has
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
    

## Getting started

Just add the package name and version into your pubspec.yaml

## Usage


### Boxes

- There are some box widget.
- `RedBox`, `GreenBox`, `BlueBox`

### TappableRow

- `TappableRow` has flex option.
  - `TappableRow(children: [ RedBox(), GreenBox(), BlueBox() ], flexes: [1,2,3])`


```dart
TappableRow(
    onTap: () => {},
    onLongTap: () => {},
    onDoubleTap: () => {},
    width: 200,
    height: 300,
    margin: ...,
    padding: ...,
    backgroundColor: ...,
    children: [ ... ],
)
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.

