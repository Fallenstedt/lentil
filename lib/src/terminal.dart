import 'dart:io';
import 'option.dart';

class Terminal {
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  void printOptions(List<Option> options) {
    for (var i = 0; i < options.length; i++) {
      stdout.writeln('[$i] - ${options[i].label}');
    }
    stdout.writeln('Enter a choice \n');
    stdout.write('>');
  }

  String collectInput() {
    return stdin.readLineSync();
  }

  void clearScreen() {
    if (Platform.isWindows) {
      // https://en.wikipedia.org/wiki/ANSI_escape_code
      stdout.write('\x1B[2J\x1b[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3BJ\x1B[H');
    }
  }
}
