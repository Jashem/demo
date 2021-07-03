import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models.dart/models.dart';
import '../../resources/repository.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc({required this.repository}) : super(StoryState());

  final Repository repository;

  @override
  Stream<StoryState> mapEventToState(
    StoryEvent event,
  ) async* {
    if (event is StoryFetched) {
      yield await _mapStoryFetchedToState(state);
    }
  }

  Future<StoryState> _mapStoryFetchedToState(StoryState state) async {
    try {
      var stories = await repository.fetchStories();
      return state.copyWith(
        status: StoryStatus.success,
        stories: stories,
      );
    } on Exception {
      return state.copyWith(status: StoryStatus.failure);
    }
  }
}
