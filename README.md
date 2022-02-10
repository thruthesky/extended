# Extended

- Flutter widgets, especially Material and Cupertino widgets, does things what they should do.
  For instance, `Column` does column things only. It does not have margin, padding, color, and other properties. Imagin HTML and CSS, all HTML tags with CSS have padding, margin, color, and all the common properties. `Extended` comes with this concept. In `Extended` package, `Column` does column things plus all the common properties.

- `Extended` is a set of handy widgets that are extended based on Material and Cupertino widgets.
  Some of widgets are simply a copy of an existing widgets with some additional properties.
  For instance, `ExtendedColumn` has background color, tap handler, margin, padding, other common properties and functionalities.

- `Extended` package also provide some functions like openning dialogs, downloading, caching files and other helper functions.

- `Extended` package depends on some of the best widgets in `pub.dev` to extend its functionalities.


## Requirements

- `Extended` uses `Get` package as its dependency that means, the app must use `GetMaterialApp` (not `MaterialApp`).



## Coding Guideline

### Naming

- Widgets that extends existing Material widgets begin with `Extended`. For instnace `ExtendedColumn`. These widgets are called `extended widgets`. Most extended widgets support its orignal widget's properties.
- Widgets that works similiar to exising Material widgets but completely rebuilt and work differently are called `copy widget` and those also begin with `Extended`. For instance, `ExtendedListTile`. The original `ListTile` has some constraints about sizing `leading` and `trailing` options and `ExtendedListTile` has no limitaion on those propertiles. But copy widgets may not support all the properties of original widget. 

## Features

### Extended properties

- All the extended widgets have as much of the common properties like below as possible.

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
  - decoration: BoxDecoration,

- See the example codes and try to open the source file in the paackage. It will surely gives you an idea how the `Extended` widgets are built, and how to use.

- All images provided by with URL will be cached with `cached_network_image`.

## Getting started

Just add the package name and version into your pubspec.yaml

## Usage

### Boxes

- There are some box widget.
- `RedBox`, `GreenBox`, `BlueBox`


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

![Extended Column](https://github.com/thruthesky/extended/raw/main/res/tappable_column.png)

- `ExtendedListTile` is a copy widget from `ListTile`. It works similar to `ListTile` but does not supprot all the properties.

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

### TipBox


![Extended Column](https://github.com/thruthesky/extended/raw/main/res/img/tip_box.jpg)

![Extended Column](https://github.com/thruthesky/extended/raw/main/res/img/tip_box2.jpg)


- `TipBox` is a variant of `ExtendedListTile`. It simply wraps `ExtendedListTile` with some default options to make it look as what `TipBox` is. See the source code of `TipBox` to understand what it does.

```dart
TipBox(
  onTap: service.openProfile,
  margin: EdgeInsets.only(top: 16),
  padding: EdgeInsets.all(16),
  spacing: 16,
  leading: FaDuotoneIcon(
    FontAwesomeIcons.duotoneIdBadge,
    primaryColor: grey,
    secondaryColor: light,
    size: 26,
  ),
  title: Text(
    'PROFILE STATUS',
    style: TextStyle(
      color: Colors.grey[700],
      fontWeight: FontWeight.bold,
    ),
  ),
  subtitle: Text(
    'Incomplete',
    style: TextStyle(
      color: Colors.orange[600],
      fontWeight: FontWeight.bold,
    ),
  ),
  trailingText: 'Update profile',
),
```



### GradientCard

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

```dart
GradientCard(
  title: photo!.title,
  url: photo!.featuredImageThumbnailUrl,
  borderRadius: xs,
  width: double.infinity,
  height: 94,
  onTap: () => service.openPostOnTop(photo!),
),
```


### Button

![Button](https://github.com/thruthesky/extended/raw/main/res/img/button.jpg)


```dart
Button(
  text: 'Button',
  margin: ... ,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  backgroundColor: Colors.yellow[800]!,
  color: white,
  chid: ... ,
  radius: ... ,
  onTap: ... ,
)
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




### PagePadding


### Spinner

### Avatar


![Avatar](https://github.com/thruthesky/extended/raw/main/res/img/avatar.jpg)

```dart
Avatar(url: 'https://placekitten.com/200/200', size: 80, onTap: ...);
```


### CachedImage

### ShareButton

### FutureShareButton

### TextChip


### ExtendedText

- It supports all `Text` properties with extended properties.

![ExtendedText](https://github.com/thruthesky/extended/raw/main/res/img/extended_text.jpg)


```dart
ExtendedText(
  'This is extended text',
  padding: const EdgeInsets.all(16),
  style: TextStyle(
    color: Colors.red.shade800,
  ),
  decoration: BoxDecoration(color: Colors.grey.shade300),
  onTap: () => alert('ExtendedText', 'tapped'),
),
```

### Input

```dart
Input(
  initialValue: 'initial value',
  debounceTime: 1200,
  decoration: textInputDecoration(hintText: 'name', labelText: 'label name'),
  onChanged: (v, input) => my
      .update(field: 'name', value: v)
      .then((value) => input.hideLoader())
      .catchError(service.error),
),
```


### Select


![Select](https://github.com/thruthesky/extended/raw/main/res/img/form_select.jpg)


```dart
Select(
  options: const {'a': 'Apple', 'b': 'Banana', 'c': 'Cherry', 'd': 'Durian'},
  defaultValue: '',
  selectedValue: 'b',
  defaultLabel: 'Select category',
  onChanged: (v) => print(v),
),
```

- Note that, key of option map is the actual value to be used. the value of the option map is the label to be appeared on the view.

- `defaultValue` is the default value and is part of the option.

- Attention, below is an error, since default value is empty string and it is already part of options. So, option has two item with same value, and it produces error.

```dart
Select(
  options: const {'': '', 'a': 'Apple', 'b': 'Banana', 'c': 'Cherry', 'd': 'Durian'},
  defaultValue: '',
  selectedValue: '',
  defaultLabel: 'Select category',
  onChanged: (v) => print(v),
),
```

### Popup

- `Popup` is a simple wrapper of `PopupMenuButton`.

![Popup](https://github.com/thruthesky/extended/raw/main/res/img/popup.jpg)


```dart
Popup(
  icon: const Icon(Icons.access_alarm_rounded),
  options: {
    'a': PopupOption(icon: const Icon(Icons.addchart), label: 'Apple'),
    'b': PopupOption(icon: const Icon(Icons.bookmarks), label: 'Banana'),
    'c': PopupOption(icon: const Icon(Icons.cabin), label: 'Cherry'),
  },
  initialValue: 'b',
  onSelected: (v) => print(v),
)
```

- It supprots, `padding`, `margin`, `decoration: BoxDecoration`.


## Functions

### getArg

### Download

- Download contents from internet.

```dart
try {
  final file = await download('https://jsonplaceholder.typicode.com/posts/1');
  print(file);
  final content = await downloadContent('https://jsonplaceholder.typicode.com/posts/1');
  print(const Utf8Decoder(allowMalformed: true).convert(content));
} catch (e) {
  error(e);
}
```

- `download()` downloads contents from internet and returns a file path after saving the content in it.
- `downloadContent()` download the contents using `download()` and returns the contents of it.

- Both of the functions has same options.
  - [url] is the url to download.
  - [filename] is the file name to save.
  - It is optional. If it is not set, then it will get the file name from url.
  - I will take the last 64 letters from the end of the url and use it after escaping.
  - [dirPath] is the directory path to save the file.
  - if it is not set, then the file will be saved in temporary folder
  - [expiration] is the time interval to download the file again.
  -   if it is `expiration: Duration(minutes: 500)`, then it will download again after 500 minutes. default is 365 days (a year)
  - [onDownloadBegin], [onDownloadEnd], [onDownloadProgress] are the callback on downloda events. If the file has already downloaded and not expired, then the callbacks will be not called.
  - [onDownloadProgress] will be called with -1 if the downloadable size is not known from the backend. onDownloadProgress has three params. first int is for percentage, second int is for how many bytes received, and the third int is for total. If the total is -1, then display the received bytes on screen.
  - The progress percentage is mostly working with binary data download.

- TIP, App can download a content in one screen and reuse the same file path in another screen.


### printLongString

