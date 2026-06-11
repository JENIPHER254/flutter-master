# Image

In Flutter, `Image` widgets display visual content from different sources.
`Image.network` loads images from a URL, while `Image.asset` loads bundled assets.

## Key points

- `Image.network` fetches images over the network and supports caching.
- `Image.asset` displays images included in the app bundle and requires asset registration in `pubspec.yaml`.
- Use `fit`, `width`, `height`, and `alignment` to control layout.

## Image.network

```dart
Image.network(
  'https://example.com/image.png',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
);
```

## Image.asset

```dart
Image.asset(
  'assets/images/logo.png',
  width: 120,
  height: 120,
  fit: BoxFit.contain,
);
```

## When to use

- Use `Image.network` for remote images like user avatars or remote content.
- Use `Image.asset` for bundled app icons, illustrations, and UI imagery.

## Notes

- Network images may fail or take time to load, so consider placeholders or loading indicators.
- Ensure asset paths are listed under `flutter.assets` in `pubspec.yaml`.
