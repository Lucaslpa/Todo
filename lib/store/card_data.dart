import 'package:mobx/mobx.dart';
import '../models/card_data.dart';

part 'card_data.g.dart';

class CardStore = CardStoreBase with _$CardStore;

abstract class CardStoreBase with Store implements CardData {
  @override
  String description = '';
  @observable
  Status status = Status.notSolved;

  CardStoreBase({required this.description});

  void changeStatus(Status newStatus) {
    status = newStatus;
  }

  bool currentStatusIs(Status isThisStatus) {
    return status == isThisStatus;
  }
}
