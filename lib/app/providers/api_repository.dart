import 'dio_provider.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final DioProvider apiProvider;

  Future<dynamic> login(String email, String password) async {
    // final response = await apiProvider.post('/login', {
    //   'email': email,
    //   'password': password,
    // });
    return 'response';
  }

  Future<String> getAppVersion() async {
    return '1.0.0';
  }
}
