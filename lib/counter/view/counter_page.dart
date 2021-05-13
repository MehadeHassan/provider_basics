import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/counter/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  static Route route() => MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
            create: (_) => CounterViewModel(),
            child: CounterPage(),
          ));

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline4;
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifier Provider'),
      ),
      body: Center(
        child: Consumer<CounterViewModel>(
          builder: (_, counter, __) {
            return Text(
              counter.count.toString(),
              style: textStyle,
            );
          },
        ),
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            onPressed: context.read<CounterViewModel>().increment,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: context.read<CounterViewModel>().decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
