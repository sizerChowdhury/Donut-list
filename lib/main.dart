import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'UI/donut_page.dart';
import 'bloc/donut_bloc.dart';
import 'repository/donut_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DonutBloc(DonutRepository())),
      ],
      child: MaterialApp(
        home: DonutPage(),
      ),
    );
  }
}
