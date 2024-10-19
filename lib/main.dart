import 'package:blocfullcourse/bloc/counter_bloc.dart';
import 'package:blocfullcourse/bloc/image_picker/imagepicker_bloc.dart';
import 'package:blocfullcourse/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'todo_bloc/todo_bloc.dart';
import 'ui/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create:(_)=> CounterBloc()),
      BlocProvider(create: (_)=> ImagePickerBloc(ImagePickerUitils())),
      BlocProvider(create: (_)=>ToDOBloc()),


    ], child:MaterialApp(
      home: Counter(),
    ),);

  }
}



