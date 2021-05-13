import 'package:flutter/material.dart';
import 'package:todo/counter/counter.dart';
import 'package:todo/ticker/ticker.dart';
import 'package:todo/todo/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline6?.copyWith(
          color: Colors.white70,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text('Providers'),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, TickerPage.route()),
              child: Text(
                'Ticker',
                style: textStyle,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, TodosPage.route()),
              child: Text(
                'Todos',
                style: textStyle,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, CounterPage.route()),
              child: Text(
                'Counter',
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
