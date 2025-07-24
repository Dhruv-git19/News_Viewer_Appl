import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/news_bloc.dart';
import 'screens/news_list_screen.dart';
import 'services/news_api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 69, 165, 210)),
        useMaterial3: true
      ),
      home: BlocProvider(
        create: (context) => NewsBloc(NewsApiService()),
        child: NewsListScreen(),
      ),
    );
  }
}