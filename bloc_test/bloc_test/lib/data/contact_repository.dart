import 'package:bloc_test/data/api/api_service.dart';
import 'package:bloc_test/data/model/contact.dart';

class ContactRepository {
  final ApiService _apiService;

  ContactRepository(this._apiService);

  Future<List<Contact>> getContacts() => _apiService.getContacts();

  Future<Contact> addContact(Contact contact) =>
      _apiService.addContact(contact);

  Future<Contact> updateContact(String id, Contact contact) =>
      _apiService.updateContact(id, contact);

  Future<Contact> deleteContact(String id) => _apiService.deleteContact(id);
}