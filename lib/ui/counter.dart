
import 'package:blocfullcourse/bloc/counter_bloc.dart';
import 'package:blocfullcourse/bloc/counter_event.dart';
import 'package:blocfullcourse/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  Counter extends StatelessWidget {
  const  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Bloc"),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          BlocBuilder<CounterBloc,CounterState>(builder: (context,state){
            return Center(child: Text(state.counter.toString(),style: TextStyle(fontSize: 60),));
          }),


          Row(
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
              }, child: Text("Increment")),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounter());
              }, child: Text("Decrement")),

            ],
          )
        ],
      ),
    );
  }
}
