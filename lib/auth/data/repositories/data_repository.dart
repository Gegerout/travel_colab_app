import 'package:travell_colab_app/auth/data/data_sources/remote_data.dart';
import 'package:travell_colab_app/auth/domain/repositories/repository_impl.dart';
import 'package:travell_colab_app/auth/domain/usecases/user_usecase.dart';

class DataRepository extends Repository {
  @override
  Future<UserUseCase?> loginUser() async {
    final data = await RemoteData().loginUser();
    if(data != null) {
      final usecase = UserUseCase(data);
      return usecase;
    }
    return null;
  }

}