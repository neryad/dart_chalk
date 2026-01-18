import 'package:dart_chalk/dart_chalk.dart';

void main() {
  // Uso básico
  print(chalk.red('Texto en rojo'));
  print(chalk.green('Texto en verde'));
  print(chalk.blue.bold('Texto azul y negrita'));

  print('\n--- Colores ---');
  print(chalk.black('Negro'));
  print(chalk.red('Rojo'));
  print(chalk.green('Verde'));
  print(chalk.yellow('Amarillo'));
  print(chalk.blue('Azul'));
  print(chalk.magenta('Magenta'));
  print(chalk.cyan('Cyan'));
  print(chalk.white('Blanco'));
  print(chalk.gray('Gris'));

  print('\n--- Estilos ---');
  print(chalk.bold('Negrita'));
  print(chalk.dim('Tenue'));
  print(chalk.italic('Cursiva'));
  print(chalk.underline('Subrayado'));
  print(chalk.inverse('Invertido'));
  print(chalk.strikethrough('Tachado'));

  print('\n--- Colores brillantes ---');
  print(chalk.brightRed('Rojo brillante'));
  print(chalk.brightGreen('Verde brillante'));
  print(chalk.brightBlue('Azul brillante'));

  print('\n--- Fondos ---');
  print(chalk.bgRed('Fondo rojo'));
  print(chalk.bgGreen.black('Fondo verde, texto negro'));
  print(chalk.bgYellow.black('Fondo amarillo, texto negro'));
  print(chalk.bgBlue.white('Fondo azul, texto blanco'));

  print('\n--- Combinaciones ---');
  print(chalk.red.bold.underline('Rojo, negrita y subrayado'));
  print(chalk.bgGreen.black.bold('Fondo verde, texto negro y negrita'));
  print(chalk.cyan.italic('Cyan cursiva'));

  print('\n--- Casos de uso comunes ---');
  print(chalk.green('✓ Operación exitosa'));
  print(chalk.red('✗ Error: archivo no encontrado'));
  print(chalk.yellow('⚠ Advertencia: memoria baja'));
  print(chalk.blue('ℹ Info: conectando a la base de datos...'));
  print(chalk.gray('🔍 Debug: valor de x = 42'));

  print('\n--- Logs estructurados ---');
  print(
      '${chalk.gray('[2024-01-17 10:30:45]')} ${chalk.green('SUCCESS')} Usuario autenticado');
  print(
      '${chalk.gray('[2024-01-17 10:30:46]')} ${chalk.red('ERROR')} Conexión timeout');
  print(
      '${chalk.gray('[2024-01-17 10:30:47]')} ${chalk.yellow('WARN')} Cache lleno');

  print('\n--- Deshabilitando colores ---');
  Chalk.enabled = false;
  print(chalk.red('Este texto no tendrá color'));
  Chalk.enabled = true;
  print(chalk.green('Este texto sí tendrá color'));
}
