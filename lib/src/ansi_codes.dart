/// ANSI escape codes for terminal colors and styles.
///
/// This class provides constants for all ANSI color codes and text styles
/// that can be used in terminal/console output.
class AnsiCodes {
  /// Reset all styles and colors to default.
  static const String reset = '\x1B[0m';

  // Text colors

  /// Black text color.
  static const String black = '\x1B[30m';

  /// Red text color.
  static const String red = '\x1B[31m';

  /// Green text color.
  static const String green = '\x1B[32m';

  /// Yellow text color.
  static const String yellow = '\x1B[33m';

  /// Blue text color.
  static const String blue = '\x1B[34m';

  /// Magenta text color.
  static const String magenta = '\x1B[35m';

  /// Cyan text color.
  static const String cyan = '\x1B[36m';

  /// White text color.
  static const String white = '\x1B[37m';

  /// Gray text color.
  static const String gray = '\x1B[90m';

  // Bright colors

  /// Bright red text color.
  static const String brightRed = '\x1B[91m';

  /// Bright green text color.
  static const String brightGreen = '\x1B[92m';

  /// Bright yellow text color.
  static const String brightYellow = '\x1B[93m';

  /// Bright blue text color.
  static const String brightBlue = '\x1B[94m';

  /// Bright magenta text color.
  static const String brightMagenta = '\x1B[95m';

  /// Bright cyan text color.
  static const String brightCyan = '\x1B[96m';

  /// Bright white text color.
  static const String brightWhite = '\x1B[97m';

  // Background colors

  /// Black background color.
  static const String bgBlack = '\x1B[40m';

  /// Red background color.
  static const String bgRed = '\x1B[41m';

  /// Green background color.
  static const String bgGreen = '\x1B[42m';

  /// Yellow background color.
  static const String bgYellow = '\x1B[43m';

  /// Blue background color.
  static const String bgBlue = '\x1B[44m';

  /// Magenta background color.
  static const String bgMagenta = '\x1B[45m';

  /// Cyan background color.
  static const String bgCyan = '\x1B[46m';

  /// White background color.
  static const String bgWhite = '\x1B[47m';

  // Bright background colors

  /// Bright red background color.
  static const String bgBrightRed = '\x1B[101m';

  /// Bright green background color.
  static const String bgBrightGreen = '\x1B[102m';

  /// Bright yellow background color.
  static const String bgBrightYellow = '\x1B[103m';

  /// Bright blue background color.
  static const String bgBrightBlue = '\x1B[104m';

  /// Bright magenta background color.
  static const String bgBrightMagenta = '\x1B[105m';

  /// Bright cyan background color.
  static const String bgBrightCyan = '\x1B[106m';

  /// Bright white background color.
  static const String bgBrightWhite = '\x1B[107m';

  // Text styles

  /// Bold or increased intensity text.
  static const String bold = '\x1B[1m';

  /// Dim or decreased intensity text.
  static const String dim = '\x1B[2m';

  /// Italic text.
  static const String italic = '\x1B[3m';

  /// Underlined text.
  static const String underline = '\x1B[4m';

  /// Inverse or reverse video (swap foreground and background colors).
  static const String inverse = '\x1B[7m';

  /// Hidden or invisible text.
  static const String hidden = '\x1B[8m';

  /// Strikethrough text.
  static const String strikethrough = '\x1B[9m';
}
