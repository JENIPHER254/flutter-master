# FloatingActionButton

`FloatingActionButton` is a material design button that floats above content and is used for primary actions.
It is often placed in the `floatingActionButton` slot of a `Scaffold`.

## Key points

- Represents a primary action on a screen.
- Usually circular and contains an icon.
- Can be customized with `backgroundColor`, `foregroundColor`, `onPressed`, and `tooltip`.

## Example

```dart
Scaffold(
  appBar: AppBar(title: Text('Example')),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Perform action
    },
    child: Icon(Icons.add),
  ),
);
```

## Usage

Include a `FloatingActionButton` when you want a prominent, easy-to-reach action button for a screen.
