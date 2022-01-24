import 'package:countermobx/store/card_data.dart';

import '../models/card_data.dart';
import 'package:mobx/mobx.dart';

part 'activities.g.dart';

class Activities = ActivitiesBase with _$Activities;

abstract class ActivitiesBase with Store {
  @observable
  ObservableList<CardStore> _allCards = ObservableList<CardStore>();

  @computed
  ObservableList<CardStore> get notSolved => ObservableList<CardStore>.of(
      _allCards.where((element) => element.status == Status.notSolved));

  @computed
  ObservableList<CardStore> get solved => ObservableList<CardStore>.of(
      _allCards.where((element) => element.status == Status.solved));

  @computed
  ObservableList<CardStore> get solving => ObservableList<CardStore>.of(
      _allCards.where((element) => element.status == Status.solving));

  @action
  void add(String description) {
    _allCards.add(CardStore(description: description));
  }
}
