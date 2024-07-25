import 'package:donut_list/domain/use_cases/donut_use_case.dart';
import 'package:donut_list/presentation/UI/donut_page.dart';
import 'package:donut_list/presentation/bloc/donut_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/service_locator/service_locator.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DonutBloc(serviceLocator<DonutUseCase>())),
      ],
      child: const MaterialApp(
        home: DonutPage(),
      ),
    );
  }
}
