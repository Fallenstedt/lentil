import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  String askOne(String prompt) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    return _terminal.collectInput();
  }

  bool askBinary(String prompt) {
    final input = _askMany('$prompt (y/n}', []);

    return input.contains('y');
  }

  String askMultiple(String prompt, List<Option> options) {
    final String input = _askMany(prompt, options);

    try {
      return options[int.parse(input)].value;
    } catch (err) {
      return _askMany(prompt, options);
    }
  }

  String _askMany(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    return _terminal.collectInput();
  }
}
