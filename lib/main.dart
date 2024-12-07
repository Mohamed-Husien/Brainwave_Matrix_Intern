import 'package:brainwave_matrix_intern_to_do_app/cubits/add_to_do_cubit/add_to_do_cubit.dart';
import 'package:brainwave_matrix_intern_to_do_app/cubits/to_do_cubit/to_do_cubit.dart';
import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:brainwave_matrix_intern_to_do_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(ToDoItemModelAdapter());
  await Hive.openBox<ToDoItemModel>('to_do');
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddToDoCubit()),
        BlocProvider(create: (context) => ToDoCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.yellow, // Set the AppBar color here
            elevation: 0, // Optional: Match your AppBar's elevation
          ),
        ),
        home: const HomeView(),
      ),
    );
  }
}
