// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_suggestions_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FriendSuggestionsPageController
    on _FriendSuggestionsPageControllerBase, Store {
  late final _$observableLoadFriendsAtom = Atom(
      name: '_FriendSuggestionsPageControllerBase.observableLoadFriends',
      context: context);

  @override
  ObservableFuture<List<Friend>>? get observableLoadFriends {
    _$observableLoadFriendsAtom.reportRead();
    return super.observableLoadFriends;
  }

  @override
  set observableLoadFriends(ObservableFuture<List<Friend>>? value) {
    _$observableLoadFriendsAtom.reportWrite(value, super.observableLoadFriends,
        () {
      super.observableLoadFriends = value;
    });
  }

  late final _$friendsAtom = Atom(
      name: '_FriendSuggestionsPageControllerBase.friends', context: context);

  @override
  List<Friend>? get friends {
    _$friendsAtom.reportRead();
    return super.friends;
  }

  @override
  set friends(List<Friend>? value) {
    _$friendsAtom.reportWrite(value, super.friends, () {
      super.friends = value;
    });
  }

  late final _$loadFriendSuggestionsAsyncAction = AsyncAction(
      '_FriendSuggestionsPageControllerBase.loadFriendSuggestions',
      context: context);

  @override
  Future<void> loadFriendSuggestions() {
    return _$loadFriendSuggestionsAsyncAction
        .run(() => super.loadFriendSuggestions());
  }

  @override
  String toString() {
    return '''
observableLoadFriends: ${observableLoadFriends},
friends: ${friends}
    ''';
  }
}