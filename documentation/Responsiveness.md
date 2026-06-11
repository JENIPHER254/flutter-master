# Responsiveness

Responsiveness helps Flutter apps adapt to different screen sizes, orientations, and content lengths.
Common patterns include using scrollable containers, flexible layout widgets, and media queries.

## SingleChildScrollView for columns

Wrap a `Column` in `SingleChildScrollView` when vertical content may overflow the screen.

```dart
SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ...,
    ],
  ),
)
```

## Expanded for rows

Use `Expanded` inside a `Row` to share available horizontal space.

```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.red, height: 100)),
    Expanded(child: Container(color: Colors.blue, height: 100)),
  ],
)
```

## Other useful widgets

- `Flexible`: like `Expanded`, but content can size itself within available space.
- `Wrap`: flows children into multiple lines when horizontal space is limited.
- `FittedBox`: scales a child to fit within its parent.
- `LayoutBuilder`: adapts layout based on parent constraints.
- `MediaQuery`: reads screen size, orientation, and text scaling.

## Example with media query

```dart
Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return size.width < 600
      ? Column(children: [...])
      : Row(children: [...]);
}
```

## When to use

- Use scroll views for content that can grow beyond the visible area.
- Use `Expanded` and `Flexible` to share or adapt space inside rows and columns.
- Use `MediaQuery` and `LayoutBuilder` to build responsive layouts for phones, tablets, and wider screens.
