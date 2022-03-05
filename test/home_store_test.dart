import 'package:flutter_test/flutter_test.dart';
import 'package:setoko/config/env.dart';
import 'package:setoko/pages/home/store/home_store.dart';

void main() {
  test('When open homepage on staging'
          'should contains that item', () async {
    Env.init(false);
    final homeStore = HomeStore();
    await homeStore.getDataHome();
    expect(homeStore.bannersPromo.length > 0, true);

  });
}
