import 'package:countermobx/models/card_data.dart';

import '../store/card_data.dart';

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  CardStore cardData = CardStore(description: '');

  Cards({
    Key? key,
    required this.cardData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(cardData.description),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              cardData.currentStatusIs(Status.notSolved)
                  ? Container()
                  : IconButton(
                      icon: const Icon(Icons.navigate_before),
                      onPressed: () {
                        if (cardData.currentStatusIs(Status.solving)) {
                          cardData.changeStatus(Status.notSolved);
                        } else {
                          cardData.changeStatus(Status.solving);
                        }
                      },
                    ),
              cardData.currentStatusIs(Status.solved)
                  ? Container()
                  : IconButton(
                      icon: const Icon(Icons.navigate_next),
                      onPressed: () {
                        if (cardData.currentStatusIs(Status.solving)) {
                          cardData.changeStatus(Status.solved);
                        } else {
                          cardData.changeStatus(Status.solving);
                        }
                      },
                    )
            ],
          ),
        ],
      ),
    );
  }
}
