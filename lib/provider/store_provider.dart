import 'package:vanvex/services/store_api.dart';

import '../model/store.dart';
import 'base_provider.dart';

class StoreProvider extends BaseProvider {
  StoreModel? _store;
  StoreModel? get store => _store;
  setStoreModel(value) {
    _store = value;
    notifyListeners();
  }

  getStoresFromApi({isInit = false}) async {
    setIsBusy(true, isInit: isInit);
    setIsfailed(false, isInit: isInit);
    final response = await StoreApi().getStores();
    if (response == null) {
      setIsBusy(false, isInit: isInit);
      setIsfailed(true, isInit: isInit);
      return;
    }
    setStoreModel(response);
    setIsBusy(false);
  }

  getStoreFromApi({isInit = false, required storeId}) async {
    setIsBusy(true, isInit: isInit);
    setIsfailed(false, isInit: isInit);
    final response = await StoreApi().getStoreById(userId: storeId);
    if (response == null) {
      setIsBusy(false, isInit: isInit);
      setIsfailed(true, isInit: isInit);
      return;
    }
    setStoreModel(response);
    setIsBusy(false);
  }

  updateStoreFromApi(
      {isInit = false,
      storeID,
      storeLabel,
      address,
      phone,
      email,
      owner}) async {
    setIsBusy(true, isInit: isInit);
    setIsfailed(false, isInit: isInit);
    final res = await StoreApi().updateStore(
        storeID: storeID,
        storeLabel: storeLabel,
        address: address,
        phone: phone,
        email: email,
        owner: owner);
    if (res == false) {
      setIsBusy(false, isInit: isInit);
      setIsfailed(true, isInit: isInit);
      return;
    }
    setIsBusy(false);
    return res;
  }
}
