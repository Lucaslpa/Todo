import 'package:countermobx/not_solved.dart';
import 'package:countermobx/solved.dart';
import 'package:countermobx/solving.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import './store/activities.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlowExample(),
    );
  }
}

class FlowExample extends StatefulWidget {
  @override
  State<FlowExample> createState() => _FlowExampleState();
}

class _FlowExampleState extends State<FlowExample> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Provider<Activities>(
      create: (context) => Activities(),
      child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 50,
              child: Observer(
                builder: (context) {
                  final activities = Provider.of<Activities>(context);

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: currentPage == 0
                                  ? Colors.blue
                                  : Colors.grey.shade300),
                          onPressed: () {
                            const page = 0;
                            _pageController
                                .animateToPage(page,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut)
                                .then((value) {
                              setState(() {
                                currentPage = page;
                              });
                            });
                          },
                          child: Column(
                            children: [
                              const Text('Não resolvido'),
                              Text('${activities.notSolved.length}')
                            ],
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: currentPage == 1
                                  ? Colors.blue
                                  : Colors.grey.shade300),
                          onPressed: () {
                            const page = 1;
                            _pageController
                                .animateToPage(page,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut)
                                .then((value) {
                              setState(() {
                                currentPage = page;
                              });
                            });
                          },
                          child: Column(
                            children: [
                              const Text('Resolvendo'),
                              Text('${activities.solving.length}')
                            ],
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: currentPage == 2
                                  ? Colors.blue
                                  : Colors.grey.shade300),
                          onPressed: () {
                            const page = 2;
                            _pageController
                                .animateToPage(page,
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut)
                                .then((value) {
                              setState(() {
                                currentPage = page;
                              });
                            });
                          },
                          child: Column(
                            children: [
                              const Text(
                                'Resolvido',
                              ),
                              Text('${activities.solved.length}')
                            ],
                          )),
                    ],
                  );
                },
              ),
            ),
          ),
          body: SafeArea(
              child: PageView(
            controller: _pageController,
            children: [NotSolved(), Solving(), Solved()],
          ))),
    );
  }
}
