# StatefulWidget

A `StatefulWidget` is a widget that can maintain mutable state over time.
It separates the widget configuration from the mutable state held in a `State` object. (are mutable)

## Key points

- Used for UI that changes in response to user interaction, timers, animations, or other events.
- The state is stored in a `State` subclass.
- Call `setState()` to notify Flutter that the widget should rebuild.

## Usage

```dart
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: \\$_count'),
        ElevatedButton(
          onPressed: () => setState(() => _count++),
          child: Text('Increment'),
        ),
      ],
    );
  }
}
```

## When to use

Choose `StatefulWidget` when your widget needs to update its appearance or behavior based on changing state.
