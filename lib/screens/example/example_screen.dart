///Vẽ UI
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/screens/example/example_cubit.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  final PageController controller = PageController();
  late final HomeCubit _cubit;

  @override
  void initState() {
    _cubit = HomeCubit();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return _cubit;
      },
      child: BlocBuilder<HomeCubit, HomeState>(buildWhen: (previous, current) {
        return previous.selectedIndex != current.selectedIndex;
      }, builder: (context, state) {
        return const Scaffold(

        );
      }),
    );
  }
}
