import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/counter_provider.dart';
import 'package:flutter_provider/provider/timer_provider.dart';
import 'package:flutter_provider/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterProvider()
        ),
        ChangeNotifierProvider(
          create: (_) => TimerProvider()
        ),
      ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue
          ),
          home: const HomeScreen(),
        ),
      );
  }
}