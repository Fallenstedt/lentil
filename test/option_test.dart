import "package:test/test.dart";
import "package:lentil/src/option.dart";

void main() {
  test("Option has a label as a String", () {
    final result = new Option('some label', true);
    expect(result.label, equals('some label'));
  });

  test("Option has a value as dynamic", () {
    final result = new Option('some label', 1);

    expect(result.value, equals(1));
  });
}
