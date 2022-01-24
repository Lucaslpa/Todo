import 'package:countermobx/components/Cards.dart';
import 'package:countermobx/store/activities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Solved extends StatelessWidget {
  const Solved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final activities = Provider.of<Activities>(context);
      return ListView.builder(
          itemCount: activities.solved.length,
          itemBuilder: (context, index) {
            return Cards(cardData: activities.solved.elementAt(index));
          });
    });
  }
}
