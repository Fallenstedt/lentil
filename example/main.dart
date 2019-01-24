import 'package:lentil/lentil.dart';

void main() {
  final options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f'),
  ];
  final prompter = new Prompter();

  final String colorCode =
      prompter.askMultiple("What color do you like", options);
  final bool isCakeLover = prompter.askBinary("Do you like cake?");

  print(colorCode);
  print(isCakeLover);
}
