# Dart Chalk

A simple and elegant way to add colors and styles to your Dart/Flutter console logs, inspired by Chalk.js

## Features

- 🎨 Simple and intuitive API
- 🌈 Support for 16 colors (8 normal + 8 bright)
- 💅 Multiple text styles (bold, italic, underline, etc.)
- 🎭 Background colors
- ⛓️ Chainable API
- 🔌 Easy to enable/disable globally

## Usage
```dart
import 'package:dart_chalk/dart_chalk.dart';

void main() {
  print(chalk.red('Error!'));
  print(chalk.green.bold('Success!'));
  print(chalk.bgBlue.white('Info'));
}
```

## Installation
```yaml
dependencies:
  dart_chalk: ^0.0.1
```

## API

### Colors
`black`, `red`, `green`, `yellow`, `blue`, `magenta`, `cyan`, `white`, `gray`

### Bright Colors
`brightRed`, `brightGreen`, `brightYellow`, `brightBlue`, `brightMagenta`, `brightCyan`, `brightWhite`

### Background Colors
`bgBlack`, `bgRed`, `bgGreen`, `bgYellow`, `bgBlue`, `bgMagenta`, `bgCyan`, `bgWhite`

### Styles
`bold`, `dim`, `italic`, `underline`, `inverse`, `strikethrough`