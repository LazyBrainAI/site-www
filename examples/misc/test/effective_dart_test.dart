// #docplaster
import 'package:test/test.dart';

void main() {
  test('sublist', () {
    // #docregion param-range
    expect([0, 1, 2, 3].sublist(1, 3), /**/ [1, 2]);
    // #enddocregion param-range
  });

  test('substring', () {
    // #docregion param-range
    expect('abcd'.substring(1, 3), /**/ 'bc');
    // #enddocregion param-range
  });

  test('toList()', () {
    {
      var iterable = [1, 2];
      // #docregion list-from-1
      var copy1 = iterable.toList();
      var copy2 = new List.from(iterable);
      // #enddocregion list-from-1
      expect(copy1, orderedEquals([1, 2]));
      expect(copy2, orderedEquals([1, 2]));
    }

    {
      // #docregion list-from-2
      // Creates a List<int>:
      var iterable = [1, 2, 3];

      // Prints "List<int>":
      print(iterable.toList().runtimeType);

      // Prints "List", which means List<dynamic>:
      print(new List.from(iterable).runtimeType);
      // #enddocregion list-from-2

      // TODO: Enable this check when this test is run in Dart 2 mode.
      // expect(iterable.toList().runtimeType.toString(), "List<int>");
      expect(new List.from(iterable).runtimeType.toString(), "List");
    }

    {
      // #docregion list-from-3
      var numbers = [1, 2.3, 4]; // List<num>.
      numbers.removeAt(1); // Now it only contains integers.
      var ints = new List<int>.from(numbers);
      // #enddocregion list-from-3

      expect(ints, orderedEquals([1, 4]));
    }
  });
}
