import 'package:flutter/foundation.dart';
import '../model/shipment.dart';
import '../services/ship_api.dart';

class ShipmentProvider extends ChangeNotifier {
  bool _isBusy = true;
  List<ShipmentModel> _listOfshipments = [];

  bool get isBusy => _isBusy;
  List<ShipmentModel> get ListOfshipments => _listOfshipments;

  setisBusy(value) {
    _isBusy = value;
    notifyListeners();
  }

  setListOfshipments(value) {
    _listOfshipments.add(value);
    notifyListeners();
  }

  addShipmentApi({
    des,
    code,
    noOfItem,
    customerAdrees,
    shipPrice,
    paymentMethod,
    custmerPhone,
    custemerName,
    customerCity,
    costOn,
  }) async {
    setisBusy(true);

    final shipments = await ShipApi().addShip(
      des: des,
      code: code,
      noOfItem: noOfItem,
      customerAdrees: customerAdrees,
      shipPrice: shipPrice,
      paymentMethod: paymentMethod,
      custmerPhone: custmerPhone,
      custemerName: custemerName,
      customerCity: customerCity,
      costOn: costOn,
    );
    setListOfshipments(shipments);
    setisBusy(false);
  }

  getShipmentsApi() async {
    setisBusy(true);

    final shipments = await ShipApi().getShippment();
    setListOfshipments(shipments);
    setisBusy(false);
  }

  getShipmentByIdApi(id) async {
    setisBusy(true);

    final shipments = await ShipApi().getShipById(shipId: id);
    setListOfshipments(shipments);
    setisBusy(false);
  }

  deleteShipmentApi(id) async {
    setisBusy(true);
    final shipments = await ShipApi().deleteShipment(shipId: id);
    setisBusy(false);
  }
}
