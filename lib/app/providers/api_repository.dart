import '../data/data.dart';
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
    final response = await apiProvider.get('/version') as String;

    return response;
  }

  Future<String> register(String nickname, String password) async {
    final data = {
      'nickname': nickname,
      'password': password,
    };
    print(data);
    // final response = await apiProvider.post('auth/register', data: data);
    return 'response';
  }

  Future<User> getUser() async {
    final response = await apiProvider.get('auth/user');
    return User.fromJson(response);
  }
}
