import "package:test/test.dart";
import "package:lentil/src/terminal.dart";

void main() {
  test('it works', () {
    final sum = 1 + 3;

    expect(sum, 4);
  });

  test('it creates a Terminal Object', () {
    final terminal = new Terminal();
    final result = terminal.printPrompt('Hello World');
    expect(1, 1);
  });
}
