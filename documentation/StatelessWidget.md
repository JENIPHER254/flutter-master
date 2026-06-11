# StatelessWidget

A `StatelessWidget` is a widget that does not require mutable state.
It builds once from a configuration and then remains constant during its lifetime. (are immutable)

## Key points

- Used for UI that does not change dynamically.
- `build()` is called only when the widget is first inserted into the tree or when its parent changes.
- Examples: text labels, icons, static layouts.

## Usage

```dart
class MyLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, world!');
  }
}
```

## When to use

Choose `StatelessWidget` when your widget depends only on its constructor arguments and never changes internally.
