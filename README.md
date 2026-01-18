# 🎨 dchalky

[![Pub Version](https://img.shields.io/pub/v/dchalky)](https://pub.dev/packages/dchalky)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A simple and elegant way to add **colors** and **styles** to your Dart/Flutter console logs. Inspired by the popular [Chalk.js](https://github.com/chalk/chalk) library, dchalky brings beautiful terminal output to your Dart projects with a clean, chainable API.

## ✨ Features

- 🎨 **16 Colors**: 8 standard + 8 bright colors for text
- 🌈 **Background Colors**: Full color palette for backgrounds
- 💅 **Text Styles**: Bold, italic, underline, strikethrough, and more
- ⛓️ **Chainable API**: Combine colors and styles effortlessly
- 🔌 **Zero Dependencies**: Lightweight and fast
- 🚀 **Easy to Use**: Intuitive syntax, familiar to Chalk.js users
- 🎯 **Global Control**: Enable/disable colors globally for production

## 🚀 Quick Start

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  dchalky: ^0.0.2
```

Then run:

```bash
dart pub get
```

### Basic Usage

```dart
import 'package:dchalky/dchalky.dart';

void main() {
  // Simple colors
  print(chalk.red('Error!'));
  print(chalk.green('Success!'));
  print(chalk.blue('Info'));

  // Combine styles
  print(chalk.red.bold('Critical Error!'));
  print(chalk.green.underline('Link'));

  // Background colors
  print(chalk.bgRed.white('Alert'));
  print(chalk.bgGreen.black('Success'));

  // Chain multiple styles
  print(chalk.blue.bold.underline('Important Info'));
}
```

## 📖 API Reference

### Text Colors

| Color            | Usage                       | Bright Variant         |
| ---------------- | --------------------------- | ---------------------- |
| Black            | `chalk.black('text')`       | -                      |
| Red              | `chalk.red('text')`         | `chalk.brightRed()`    |
| Green            | `chalk.green('text')`       | `chalk.brightGreen()`  |
| Yellow           | `chalk.yellow('text')`      | `chalk.brightYellow()` |
| Blue             | `chalk.blue('text')`        | `chalk.brightBlue()`   |
| Magenta          | `chalk.magenta('text')`     | `chalk.brightMagenta()`|
| Cyan             | `chalk.cyan('text')`        | `chalk.brightCyan()`   |
| White            | `chalk.white('text')`       | `chalk.brightWhite()`  |
| Gray             | `chalk.gray('text')`        | -                      |

### Background Colors

All text colors are available as background colors with the `bg` prefix:

```dart
chalk.bgRed('text')
chalk.bgGreen('text')
chalk.bgBlue('text')
// ... and bright variants
chalk.bgBrightRed('text')
```

### Text Styles

| Style           | Usage                         | Description                    |
| --------------- | ----------------------------- | ------------------------------ |
| Bold            | `chalk.bold('text')`          | Bold or increased intensity    |
| Dim             | `chalk.dim('text')`           | Decreased intensity            |
| Italic          | `chalk.italic('text')`        | Italic text                    |
| Underline       | `chalk.underline('text')`     | Underlined text                |
| Inverse         | `chalk.inverse('text')`       | Swap foreground/background     |
| Strikethrough   | `chalk.strikethrough('text')` | Crossed-out text               |

## 🎮 Real-World Examples

### Log Levels

```dart
print(chalk.green('✓ Success: User authenticated'));
print(chalk.red('✗ Error: Connection timeout'));
print(chalk.yellow('⚠ Warning: Low memory'));
print(chalk.blue('ℹ Info: Loading data...'));
print(chalk.gray('🔍 Debug: x = 42'));
```

### Structured Logs

```dart
final timestamp = chalk.gray('[2025-01-17 10:30:45]');
final level = chalk.green.bold('SUCCESS');
final message = 'User login completed';

print('$timestamp $level $message');
```

### Error Messages

```dart
void showError(String message) {
  print(chalk.bgRed.white.bold(' ERROR '));
  print(chalk.red(message));
}

showError('File not found: config.json');
```

### Progress Indicators

```dart
print(chalk.cyan('⏳ Processing...'));
// ... do work ...
print(chalk.green('✓ Complete!'));
```

## 🔧 Advanced Features

### Global Enable/Disable

Perfect for production environments where you want to disable colors:

```dart
void main() {
  // Disable colors in production
  if (const bool.fromEnvironment('dart.vm.product')) {
    Chalk.enabled = false;
  }

  print(chalk.red('This will only be red in development'));
}
```

### Custom Helpers

Create your own helper functions:

```dart
String success(String msg) => chalk.green('✓ $msg');
String error(String msg) => chalk.red('✗ $msg');
String warning(String msg) => chalk.yellow('⚠ $msg');

print(success('Operation completed'));
print(error('Something went wrong'));
```

## 🎯 Use Cases

- **Development Logging**: Make your debug output easier to read
- **CLI Tools**: Create beautiful command-line applications
- **Build Scripts**: Highlight important build information
- **Test Runners**: Color-code test results
- **Dev Tools**: Improve developer experience with visual feedback

## 🧪 Testing

```bash
# Run tests
flutter test

# Check coverage
flutter test --coverage
```

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌟 Support

If dchalky has helped improve your development experience, consider:

- ⭐ Starring the repo
- 🐛 Reporting bugs
- 💡 Suggesting features
- 📖 Improving documentation

## 📱 Connect

Follow for updates and more Dart/Flutter tools:

- 🐤 **Twitter**: [@neryadg](https://twitter.com/neryadg)
- 🟣 **Twitch**: [twitch.tv/neryad](https://twitch.tv/neryad)
- 🌐 **More Links**: [beacons.ai/neryad](https://beacons.ai/neryad)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/M4M31DTPAL)

## 📈 Changelog

See [CHANGELOG.md](CHANGELOG.md) for a detailed list of changes.

---

<div align="center">

**Made with ❤️ by [Neryad](https://beacons.ai/neryad)**

_If you found this helpful, give it a ⭐!_

</div>
