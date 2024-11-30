part of 'get_contact_cubit.dart';

sealed class GetContactState extends Equatable {
  const GetContactState();

  @override
  List<Object> get props => [];
}

final class GetContactInitial extends GetContactState {}

class GetContactSuccess extends GetContactState {
  final List<Contact> contacts;

  const GetContactSuccess(this.contacts);

  @override
  List<Object> get props => [contacts];
}

class GetContactFail extends GetContactState {
  final String error;

  const GetContactFail(this.error);

  @override
  List<Object> get props => [error];
}
