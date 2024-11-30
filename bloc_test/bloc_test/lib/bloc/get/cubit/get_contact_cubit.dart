import 'package:bloc/bloc.dart';
import 'package:bloc_test/data/contact_repository.dart';
import 'package:bloc_test/data/model/contact.dart';
import 'package:equatable/equatable.dart';

part 'get_contact_state.dart';

class GetContactCubit extends Cubit<GetContactState> {
  final ContactRepository _contactRepository;
  GetContactCubit(this._contactRepository) : super(GetContactInitial());

  void getContacts() {
    emit(GetContactInitial());
    _contactRepository
        .getContacts()
        .then((contacts) => emit(GetContactSuccess(contacts)))
        .catchError((error) => emit(GetContactFail(error)));
  }
}
