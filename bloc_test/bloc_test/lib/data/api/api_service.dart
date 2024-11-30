import 'package:bloc_test/data/model/contact.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "https://674ac94971933a4e88537346.mockapi.io/api")
abstract class ApiService {
  factory ApiService(Dio dio) => _ApiService(dio);

  @GET("")
  Future<List<Contact>> getContacts();

  @POST("")
  Future<Contact> addContact(@Body() Contact contact);

  @PUT("{id}")
  Future<Contact> updateContact(@Path() String id, @Body() Contact contact);

  @DELETE("{id}")
  Future<Contact> deleteContact(@Path() String id);
}
