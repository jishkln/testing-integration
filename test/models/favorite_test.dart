import 'package:test/test.dart';

import 'package:testing1/model/favorite.dart';

void main() {
  group(
    "Testing App provider",
    () {
      var favorite = Favorites();

      test(
        "Test a favorite add",
        () {
          var value = 35;
          favorite.add(value);
          expect(favorite.items.contains(value), true);
        },
      );
      test(
        "Test an item to be remove",
        () {
          var value = 2;
          favorite.add(value);
          expect(favorite.items.contains(value), true);
          favorite.remove(value);
          expect(favorite.items.contains(value), false);
        },
      );
    },
  );
}
