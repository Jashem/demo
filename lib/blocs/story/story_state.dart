part of 'story_bloc.dart';

enum StoryStatus { initial, success, failure }

class StoryState extends Equatable {
  const StoryState({
    this.status = StoryStatus.initial,
    this.stories = const [],
  });

  final StoryStatus status;
  final List<Story> stories;

  StoryState copyWith({
    StoryStatus? status,
    List<Story>? stories,
  }) {
    return StoryState(
      status: status ?? this.status,
      stories: stories ?? this.stories,
    );
  }

  @override
  String toString() {
    return "StoryState { status: $status, sellers: ${stories.length}}";
  }

  @override
  List<Object> get props => [status, stories];
}
