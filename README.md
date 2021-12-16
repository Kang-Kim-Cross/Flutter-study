# hello_world

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

In visual studio code with macos

Press cmd + shift + p then choose new flutter project

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Dev

```
flutter run -d Chrome

# or 
flutter run -d chrome --no-sound-null-safety --web-renderer=html
```

## Build & Run

```
# In Ios 14+
flutter run --release

# or
flutter build web --no-sound-null-safety --web-renderer=html
```

### TMI

Rendering options

- Auto

If mobile then use HTML, desktop will use Canvaskit

- HTML

Normal web renderer, html, css, canvas ....

- Canvaskit

Skia graphic engine, WebAssembly 