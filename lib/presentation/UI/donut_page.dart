import 'package:donut_list/presentation/bloc/donut_bloc.dart';
import 'package:donut_list/presentation/bloc/donut_event.dart';
import 'package:donut_list/presentation/bloc/donut_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonutPage extends StatefulWidget {
  const DonutPage({super.key});

  @override
  State<DonutPage> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<DonutPage> {
  @override
  void initState() {
    super.initState();
    context.read<DonutBloc>().add(FetchDonutList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite-item"),
      ),
      body: BlocBuilder<DonutBloc, DonutState>(
        builder: (context, state) {
          switch (state.listStatus) {
            case ListStatues.loading:
              return const Center(child: CircularProgressIndicator());
            case ListStatues.failure:
              return const Text("failed");
            case ListStatues.success:
              return ListView.builder(
                itemCount: state.donuts.length,
                itemBuilder: (context, index) {
                  final donut = state.donuts[index];
                  return Card(
                    child: ListTile(
                      title: Text(donut.name),
                      subtitle: Text('Type: ${donut.id}, Price: ${donut.ppu}'),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
