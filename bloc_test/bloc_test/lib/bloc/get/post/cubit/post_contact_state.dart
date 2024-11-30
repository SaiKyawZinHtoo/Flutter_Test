part of 'post_contact_cubit.dart';

sealed class PostContactState extends Equatable {
  const PostContactState();

  @override
  List<Object> get props => [];
}

final class PostContactInitial extends PostContactState {}

class PostContactLoading extends PostContactState {}

class PostContactSuccess extends PostContactState {}

class PostContactFail extends PostContactState {
  final String error;

  PostContactFail(this.error);

  @override
  List<Object> get props => [error];
}
