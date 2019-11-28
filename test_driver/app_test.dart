import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counnter App', () {
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    test('start at 0', () async {
      expect(await driver.getText(counterTextFinder), '0');
    });

    test('incremennts the counter', () async {
      await driver.tap(buttonFinder);
      expect(await driver.getText(counterTextFinder), '1');
    });

  });
}
