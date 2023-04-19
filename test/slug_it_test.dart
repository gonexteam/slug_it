import 'package:flutter_test/flutter_test.dart';
import 'package:slug_it/slug_it.dart';

void main() {
  test('Create custom slug', () {
    final slug = SlugIT();
    expect(slug.makeSlug('Haha... 2'), 'haha-2');
    expect(slug.makeSlug('Xin chào các bạn!'), 'xin-chao-cac-ban');
    expect(slug.makeSlug('Hồ gươm'), 'ho-guom');
    expect(slug.makeSlug('How do i do with this project?', separator: '_'),
        'how_do_i_do_with_this_project');
  });
}
