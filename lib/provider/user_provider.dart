import 'package:vanvex/model/user.dart';
import 'package:vanvex/services/user_api.dart';

import 'base_provider.dart';

class UserProvider extends BaseProvider {
  UserModel? _user;
  UserModel? get user => _user;
  setUserModel(value) {
    _user = value;
    notifyListeners();
  }

  getUsersFromApi({isInit = false}) async {
    setIsBusy(true, isInit: isInit);
    setIsfailed(false, isInit: isInit);
    final response = await UserApi().getUsers();
    if (response == null) {
      setIsBusy(false, isInit: isInit);
      setIsfailed(true, isInit: isInit);
      return;
    }
    setUserModel(response);
    setIsBusy(false);
  }

  getUserFromApi({isInit = true, required userId}) async {
    setIsBusy(true, isInit: isInit);
    setIsfailed(false, isInit: isInit);
    final response = await UserApi().getUserById(userId: userId);
    if (response == null) {
      setIsBusy(false, isInit: isInit);
      setIsfailed(true, isInit: isInit);
      return;
    }
    setUserModel(response);
    setIsBusy(false);
  }
}
