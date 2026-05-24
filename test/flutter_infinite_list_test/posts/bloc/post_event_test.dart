import 'package:bloc_docs_tutorials/flutter_infinite_list/posts/bloc/post_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostEvent', () {
    group('PostFetched', () {
      test('supports value comparison', () {
        expect(PostFetched(), PostFetched());
      });
    });
  });
}
