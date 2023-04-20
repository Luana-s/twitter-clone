// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FeedPageController on _FeedPageControllerBase, Store {
  late final _$postsFutureAtom =
      Atom(name: '_FeedPageControllerBase.postsFuture', context: context);

  @override
  ObservableFuture<List<Post>>? get postsFuture {
    _$postsFutureAtom.reportRead();
    return super.postsFuture;
  }

  @override
  set postsFuture(ObservableFuture<List<Post>>? value) {
    _$postsFutureAtom.reportWrite(value, super.postsFuture, () {
      super.postsFuture = value;
    });
  }

  late final _$observablePostsListAtom = Atom(
      name: '_FeedPageControllerBase.observablePostsList', context: context);

  @override
  ObservableList<Post>? get observablePostsList {
    _$observablePostsListAtom.reportRead();
    return super.observablePostsList;
  }

  @override
  set observablePostsList(ObservableList<Post>? value) {
    _$observablePostsListAtom.reportWrite(value, super.observablePostsList, () {
      super.observablePostsList = value;
    });
  }

  @override
  String toString() {
    return '''
postsFuture: ${postsFuture},
observablePostsList: ${observablePostsList}
    ''';
  }
}