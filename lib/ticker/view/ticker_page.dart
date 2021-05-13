import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/repository/repository.dart';
import 'package:todo/ticker/view_model/ticker_view_model.dart';

class TickerPage extends StatelessWidget {
  static Route route() => MaterialPageRoute(
        builder: (context) => Provider(
          create: (_) => TickerViewModel(
            tickerRepository: context.read<TickerRepository>(),
          ),
          child: TickerPage(),
        ),
      );

  const TickerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamProvider<int>(
      initialData: 00,
      create: (_) => TickerViewModel(
        tickerRepository: context.read<TickerRepository>(),
      ).fetchTicker(),
      child: TickerView(),
    );
  }
}

class TickerView extends StatelessWidget {
  const TickerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Provider'),
      ),
      body: Center(
        child: TickerText(),
      ),
    );
  }
}

class TickerText extends StatelessWidget {
  const TickerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<int>(
      builder: (_, value, __) => Text(value.toString()),
    );
  }
}
