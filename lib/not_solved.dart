import 'package:countermobx/components/Cards.dart';
import 'package:countermobx/models/card_data.dart';
import 'package:countermobx/store/activities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class NotSolved extends StatelessWidget {
  NotSolved({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final activities = Provider.of<Activities>(context);
      return Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            onSubmitted: (String value) {
              activities.add(value);
              _controller.clear();
            },
            decoration: const InputDecoration(
              hintText: 'Nova Tarefa',
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: activities.notSolved.length,
              itemBuilder: (context, index) {
                return Cards(cardData: activities.notSolved.elementAt(index));
              }),
        ),
      ]);
    });
  }
}
