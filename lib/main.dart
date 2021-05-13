import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';
import 'repository/repository.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => TodosRepository(),
        ),
        Provider(
          create: (_) => TickerRepository(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
