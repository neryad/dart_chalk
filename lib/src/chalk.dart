import 'ansi_codes.dart';

/// Main Chalk class for styling terminal output
class Chalk {
  final List<String> _codes = [];
  static bool _enabled = true;

  /// Enable or disable colored output globally
  static set enabled(bool value) => _enabled = value;
  static bool get enabled => _enabled;

  Chalk._internal();

  /// Apply the stored styles to a string
  String call(String text) {
    if (!_enabled || _codes.isEmpty) return text;
    return '${_codes.join()}$text${AnsiCodes.reset}';
  }

  /// Create a new Chalk instance with additional codes
  Chalk _add(String code) {
    final newChalk = Chalk._internal();
    newChalk._codes.addAll(_codes);
    newChalk._codes.add(code);
    return newChalk;
  }

  // Text colors
  Chalk get black => _add(AnsiCodes.black);
  Chalk get red => _add(AnsiCodes.red);
  Chalk get green => _add(AnsiCodes.green);
  Chalk get yellow => _add(AnsiCodes.yellow);
  Chalk get blue => _add(AnsiCodes.blue);
  Chalk get magenta => _add(AnsiCodes.magenta);
  Chalk get cyan => _add(AnsiCodes.cyan);
  Chalk get white => _add(AnsiCodes.white);
  Chalk get gray => _add(AnsiCodes.gray);

  // Bright colors
  Chalk get brightRed => _add(AnsiCodes.brightRed);
  Chalk get brightGreen => _add(AnsiCodes.brightGreen);
  Chalk get brightYellow => _add(AnsiCodes.brightYellow);
  Chalk get brightBlue => _add(AnsiCodes.brightBlue);
  Chalk get brightMagenta => _add(AnsiCodes.brightMagenta);
  Chalk get brightCyan => _add(AnsiCodes.brightCyan);
  Chalk get brightWhite => _add(AnsiCodes.brightWhite);

  // Background colors
  Chalk get bgBlack => _add(AnsiCodes.bgBlack);
  Chalk get bgRed => _add(AnsiCodes.bgRed);
  Chalk get bgGreen => _add(AnsiCodes.bgGreen);
  Chalk get bgYellow => _add(AnsiCodes.bgYellow);
  Chalk get bgBlue => _add(AnsiCodes.bgBlue);
  Chalk get bgMagenta => _add(AnsiCodes.bgMagenta);
  Chalk get bgCyan => _add(AnsiCodes.bgCyan);
  Chalk get bgWhite => _add(AnsiCodes.bgWhite);

  // Bright background colors
  Chalk get bgBrightRed => _add(AnsiCodes.bgBrightRed);
  Chalk get bgBrightGreen => _add(AnsiCodes.bgBrightGreen);
  Chalk get bgBrightYellow => _add(AnsiCodes.bgBrightYellow);
  Chalk get bgBrightBlue => _add(AnsiCodes.bgBrightBlue);
  Chalk get bgBrightMagenta => _add(AnsiCodes.bgBrightMagenta);
  Chalk get bgBrightCyan => _add(AnsiCodes.bgBrightCyan);
  Chalk get bgBrightWhite => _add(AnsiCodes.bgBrightWhite);

  // Text styles
  Chalk get bold => _add(AnsiCodes.bold);
  Chalk get dim => _add(AnsiCodes.dim);
  Chalk get italic => _add(AnsiCodes.italic);
  Chalk get underline => _add(AnsiCodes.underline);
  Chalk get inverse => _add(AnsiCodes.inverse);
  Chalk get hidden => _add(AnsiCodes.hidden);
  Chalk get strikethrough => _add(AnsiCodes.strikethrough);
}

/// Global chalk instance
final chalk = Chalk._internal();
