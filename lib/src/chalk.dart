import 'ansi_codes.dart';

/// Main Chalk class for styling terminal output.
///
/// Provides a chainable API for applying colors and styles to text.
///
/// Example:
/// ```dart
/// print(chalk.red('Error message'));
/// print(chalk.green.bold('Success!'));
/// print(chalk.bgBlue.white('Info'));
/// ```
class Chalk {
  final List<String> _codes = [];
  static bool _enabled = true;

  /// Enable or disable colored output globally.
  ///
  /// When set to `false`, all styling will be disabled and text will be
  /// returned as-is without any ANSI codes.
  ///
  /// Example:
  /// ```dart
  /// Chalk.enabled = false;
  /// print(chalk.red('This will not be red'));
  /// ```
  static set enabled(bool value) => _enabled = value;

  /// Returns whether colored output is currently enabled.
  static bool get enabled => _enabled;

  Chalk._internal();

  /// Apply the stored styles to a string.
  ///
  /// Returns the text wrapped with the appropriate ANSI codes based on
  /// the chained color and style methods.
  String call(String text) {
    if (!_enabled || _codes.isEmpty) return text;
    return '${_codes.join()}$text${AnsiCodes.reset}';
  }

  /// Create a new Chalk instance with additional codes.
  Chalk _add(String code) {
    final newChalk = Chalk._internal();
    newChalk._codes.addAll(_codes);
    newChalk._codes.add(code);
    return newChalk;
  }

  // Text colors

  /// Apply black text color.
  Chalk get black => _add(AnsiCodes.black);

  /// Apply red text color.
  Chalk get red => _add(AnsiCodes.red);

  /// Apply green text color.
  Chalk get green => _add(AnsiCodes.green);

  /// Apply yellow text color.
  Chalk get yellow => _add(AnsiCodes.yellow);

  /// Apply blue text color.
  Chalk get blue => _add(AnsiCodes.blue);

  /// Apply magenta text color.
  Chalk get magenta => _add(AnsiCodes.magenta);

  /// Apply cyan text color.
  Chalk get cyan => _add(AnsiCodes.cyan);

  /// Apply white text color.
  Chalk get white => _add(AnsiCodes.white);

  /// Apply gray text color.
  Chalk get gray => _add(AnsiCodes.gray);

  // Bright colors

  /// Apply bright red text color.
  Chalk get brightRed => _add(AnsiCodes.brightRed);

  /// Apply bright green text color.
  Chalk get brightGreen => _add(AnsiCodes.brightGreen);

  /// Apply bright yellow text color.
  Chalk get brightYellow => _add(AnsiCodes.brightYellow);

  /// Apply bright blue text color.
  Chalk get brightBlue => _add(AnsiCodes.brightBlue);

  /// Apply bright magenta text color.
  Chalk get brightMagenta => _add(AnsiCodes.brightMagenta);

  /// Apply bright cyan text color.
  Chalk get brightCyan => _add(AnsiCodes.brightCyan);

  /// Apply bright white text color.
  Chalk get brightWhite => _add(AnsiCodes.brightWhite);

  // Background colors

  /// Apply black background color.
  Chalk get bgBlack => _add(AnsiCodes.bgBlack);

  /// Apply red background color.
  Chalk get bgRed => _add(AnsiCodes.bgRed);

  /// Apply green background color.
  Chalk get bgGreen => _add(AnsiCodes.bgGreen);

  /// Apply yellow background color.
  Chalk get bgYellow => _add(AnsiCodes.bgYellow);

  /// Apply blue background color.
  Chalk get bgBlue => _add(AnsiCodes.bgBlue);

  /// Apply magenta background color.
  Chalk get bgMagenta => _add(AnsiCodes.bgMagenta);

  /// Apply cyan background color.
  Chalk get bgCyan => _add(AnsiCodes.bgCyan);

  /// Apply white background color.
  Chalk get bgWhite => _add(AnsiCodes.bgWhite);

  // Bright background colors

  /// Apply bright red background color.
  Chalk get bgBrightRed => _add(AnsiCodes.bgBrightRed);

  /// Apply bright green background color.
  Chalk get bgBrightGreen => _add(AnsiCodes.bgBrightGreen);

  /// Apply bright yellow background color.
  Chalk get bgBrightYellow => _add(AnsiCodes.bgBrightYellow);

  /// Apply bright blue background color.
  Chalk get bgBrightBlue => _add(AnsiCodes.bgBrightBlue);

  /// Apply bright magenta background color.
  Chalk get bgBrightMagenta => _add(AnsiCodes.bgBrightMagenta);

  /// Apply bright cyan background color.
  Chalk get bgBrightCyan => _add(AnsiCodes.bgBrightCyan);

  /// Apply bright white background color.
  Chalk get bgBrightWhite => _add(AnsiCodes.bgBrightWhite);

  // Text styles

  /// Apply bold text style.
  Chalk get bold => _add(AnsiCodes.bold);

  /// Apply dim text style (decreased intensity).
  Chalk get dim => _add(AnsiCodes.dim);

  /// Apply italic text style.
  Chalk get italic => _add(AnsiCodes.italic);

  /// Apply underline text style.
  Chalk get underline => _add(AnsiCodes.underline);

  /// Apply inverse text style (swap foreground and background colors).
  Chalk get inverse => _add(AnsiCodes.inverse);

  /// Apply hidden text style (invisible).
  Chalk get hidden => _add(AnsiCodes.hidden);

  /// Apply strikethrough text style.
  Chalk get strikethrough => _add(AnsiCodes.strikethrough);
}

/// Global chalk instance for styling terminal output.
///
/// Use this instance to apply colors and styles to your console output.
///
/// Example:
/// ```dart
/// import 'package:dchalky/dchalky.dart';
///
/// void main() {
///   print(chalk.red('Error!'));
///   print(chalk.green.bold('Success!'));
///   print(chalk.bgBlue.white('Info'));
/// }
/// ```
final chalk = Chalk._internal();
