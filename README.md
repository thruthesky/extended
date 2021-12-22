# Extended

- A set of handy widgets and functions that are extended based on Material and Cupertino widgets.
  - Some of widgets in this package are simply a copy of an existing widgets with some additional properties.
  For instance, `Column` widget does column thing only. It does not have background color, tap handler, margin, padding, etc. And we often need to wrap `Coulmn` with additional widgets to have those functionalities on it. This is one reason why we have `Extended` package here.

- `Extended` package also provide some functions like openning dialogs, downloading, caching files and other helper functions.

- `Extended` package depends on some of the best widgets in `pub.dev` to extend its functionalities.


## Requirements

- `Extended` uses `Get` package as its dependency that means, the app must use `GetMaterialApp` (not `MaterialApp`).



## Coding Guideline

### Naming

- Widgets that extends existing Material widgets begin with `Extended`. For instnace `ExtendedColumn`. These widgets are called `extended widgets`. Most extended widgets support its orignal widget's properties.
- Widgets that works similiar to exising Material widgets but completely rebuilt and work differently are called `copy widget` and those also begin with `Extended`. For instance, `ExtendedListTile`. The original `ListTile` has some constraints about sizing `leading` and `trailing` options and `ExtendedListTile` has no limitaion on those propertiles. But copy widgets may not support all the properties of original widget. 

## Features

### Common properties

- All the extended widgets have as much as the common properties like below.

  - color,
  - backgroundColor,
  - borderColor,
  - borderRadius,
  - borederWidth,
  - margin,
  - padding,
  - size,
  - width,
  - height,
  - onTap,
  - onLongPress,
  - onDoubleTap

- See the example codes and try to open the source file in the paackage. It will surely gives you an idea how the `Extended` widgets are built, and how to use.

- All images provided by with URL will be cached with `cached_network_image`.

## Getting started

Just add the package name and version into your pubspec.yaml

## Usage

### Boxes

- There are some box widget.
- `RedBox`, `GreenBox`, `BlueBox`

### GradientCard

### ExtendedRow

- `ExtendedRow` has flex option.
  - `ExtendedRow(children: [ RedBox(), GreenBox(), BlueBox() ], flexes: [1,2,3])`

![Extended Row](https://github.com/thruthesky/extended/raw/main/res/tappable_row.jpg)

```dart
ExtendedRow(
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

### ExtendedColumn

- `ExtendedColumn` also have other option you can customize.

- required

  - children

- optional

  - mainAxisAlignment = MainAxisAlignment.start,
  - mainAxisSize = MainAxisSize.max,
  - crossAxisAlignment = CrossAxisAlignment.center,
  - textDirection,
  - verticalDirection = VerticalDirection.down,
  - textBaseline,
  - width,
  - height,
  - padding,
  - margin,
  - backgroundColor,
  - borderColor = const Color(0xFFaaaaaa),
  - borderRadius = 0.0,
  - borderWidth = 0.0,
  - onTap,
  - onLongPress,
  - onDoubleTap,
  - flexes,

![Extended Column](https://github.com/thruthesky/extended/raw/main/res/tappable_column.png)

```dart
ExtendedColumn(
  mainAxisAlignment: MainAxisAlignment.start,
  margin: const EdgeInsets.all(16),
  padding: const EdgeInsets.all(16),
  backgroundColor: Colors.black,
  borderRadius: 16,
  borderWidth: 5.5,
  borderColor: Colors.blueGrey,
  children: const [
    RedBox(),
    BlueBox(),
    YellowBox(),
  ],
  flexes: const [1, 1, 1],
  onTap: () => alert(context, 'onTap', 'tapped'),
  onDoubleTap: () => alert(context, 'onDoubleTap', 'double tapped'),
  onLongPress: () => alert(context, 'onLongPress', 'long press'),
),
```

### ExtendedListTile

- `ExtendedListTile` is a copy widget. It works similar to `ListTile` but does not supprot all the properties.

```dart
ExtendedListTile(
  padding: const EdgeInsets.symmetric(horizontal: sm, vertical: xxs),
  leading: Image( ... ),
  title: Text( '...' ),
  subtitle: ExtendedColumn(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [ .. ],
  ),
  onTap: () => {},
),
```

### Gradient Card

- `Gradient Card` can be costumized with the following options:

* required

  - title - String

* optional

  - url - Image URL.
  - child - must be a type of `Widget`.
  - onTap - function to execute when the card is tapped.
  - onLongPress - function to execute when the card is long pressed.
  - onDoubleTap function to execute when the card is double tapped.
  - titleStyle = default: `TextStyle(color: Colors.white)`,
  - titleMaxLines = default: `1`.
  - borderRadius - default: `8.0`.
  - titleWidthFactor - default: `0.7`.
  - titleAlignment - title alignment, default: `TextAlign.center`.
  - gradientColors - Title background color, default: `[Colors.black, Colors.transparent]`.
  - textOverflow - type of overflow for long title text, default: `TextOverflow.fade`.
  - overlays - additional positioned overlays.
  - placeholder - this will be used if `url` is provided.
  - errorWidget - this will be used if `url` is provided.

* NOTE:
  - it will use the `child` widget if both `child` and `url` properties are given a value.
  - if both `child` and `url` is omitted, it will throw an assert error.

![Gradient Card](https://github.com/thruthesky/extended/raw/main/res/gradient_card.png)

```dart
GradientCard(
  child: ,
  title: 'This is the title',
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
);
```

### IconTextButton

- The purpose of this widget is to display an icon on top and a text at bottom.

![IconTextButton](https://github.com/thruthesky/extended/raw/main/res/icon_text_button.jpg)

```dart
IconTextButton(
  icon: FaDuotoneIcon(
    FontAwesomeIcons.duotoneUsers,
    primaryColor: Colors.red,
    secondaryColor: Colors.grey,
    size: 32,
  ),
  text: Text(
    'Residents',
    style: TextStyle(color: Colors.black, fontSize: 10),
  ),
  spacing: 4,
  onTap: () => service.open(RouteNames.residents),
),
```


### ExtendedContainer

- It extends the Material `Container` widget that means you can use all the existing properties of the `Container` widget.
- It supports the following options
  - `onTap`