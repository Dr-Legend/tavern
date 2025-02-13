import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:pub_client/pub_client.dart';

@immutable
class SearchState {
  final List<String> searchHistory;
  final List<Package> searchResults;

  const SearchState({this.searchHistory, this.searchResults});

  SearchState copyWith({
    List<String> searchHistory,
    List<Package> searchResults,
  }) {
    return SearchState(
        searchHistory: searchHistory ?? this.searchHistory,
        searchResults: searchResults ?? this.searchResults);
  }
}

class InitialSearchState extends SearchState {
  const InitialSearchState({@required List<String> searchHistory})
      : super(searchHistory: searchHistory);
}

class SearchLoadingState extends SearchState {
  const SearchLoadingState({@required List<String> searchHistory})
      : super(searchHistory: searchHistory);
}

class SearchCompleteState extends SearchState {
  const SearchCompleteState({@required List<Package> searchResults})
      : super(searchResults: searchResults);
}
