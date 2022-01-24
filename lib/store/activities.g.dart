// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Activities on ActivitiesBase, Store {
  Computed<ObservableList<CardStore>>? _$notSolvedComputed;

  @override
  ObservableList<CardStore> get notSolved => (_$notSolvedComputed ??=
          Computed<ObservableList<CardStore>>(() => super.notSolved,
              name: 'ActivitiesBase.notSolved'))
      .value;
  Computed<ObservableList<CardStore>>? _$solvedComputed;

  @override
  ObservableList<CardStore> get solved => (_$solvedComputed ??=
          Computed<ObservableList<CardStore>>(() => super.solved,
              name: 'ActivitiesBase.solved'))
      .value;
  Computed<ObservableList<CardStore>>? _$solvingComputed;

  @override
  ObservableList<CardStore> get solving => (_$solvingComputed ??=
          Computed<ObservableList<CardStore>>(() => super.solving,
              name: 'ActivitiesBase.solving'))
      .value;

  final _$_allCardsAtom = Atom(name: 'ActivitiesBase._allCards');

  @override
  ObservableList<CardStore> get _allCards {
    _$_allCardsAtom.reportRead();
    return super._allCards;
  }

  @override
  set _allCards(ObservableList<CardStore> value) {
    _$_allCardsAtom.reportWrite(value, super._allCards, () {
      super._allCards = value;
    });
  }

  final _$ActivitiesBaseActionController =
      ActionController(name: 'ActivitiesBase');

  @override
  void add(String description) {
    final _$actionInfo = _$ActivitiesBaseActionController.startAction(
        name: 'ActivitiesBase.add');
    try {
      return super.add(description);
    } finally {
      _$ActivitiesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
notSolved: ${notSolved},
solved: ${solved},
solving: ${solving}
    ''';
  }
}
