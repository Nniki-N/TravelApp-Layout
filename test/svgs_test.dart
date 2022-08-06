import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.bell).existsSync(), true);
    expect(File(Svgs.camp).existsSync(), true);
    expect(File(Svgs.fish).existsSync(), true);
    expect(File(Svgs.kayaki).existsSync(), true);
    expect(File(Svgs.menuBurger).existsSync(), true);
    expect(File(Svgs.plus).existsSync(), true);
  });
}
