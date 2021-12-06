# Extended

`Extended` is a set of Flutter widgets that are extended based on Material and Cupertino widgets. The widgets of in this package have extra functionalities.
For instance, `Column` widget does column things only on Material widget. It does not have background color option, nor tap handler and often we need to add those functionality to `Column` widget. And this is the reason why we have `Extended` package here. `Extended` package also provide method like `alert`.




## Features

### Common properties

All the extended widgets have as much as the common properties like below.
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


## TODO list


- 