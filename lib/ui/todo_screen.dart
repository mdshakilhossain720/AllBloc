
import 'package:blocfullcourse/todo_bloc/todo_bloc.dart';
import 'package:blocfullcourse/todo_bloc/todo_event.dart';
import 'package:blocfullcourse/todo_bloc/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        for(int i=0;i<10;i++){
          context.read<ToDOBloc>().add(AddToEvents(task: 'task :'+i.toString()));
        }

      },child: Icon(Icons.add),),
      appBar: AppBar(title: Text("ToDO Apps"),),

      body: BlocBuilder<ToDOBloc,ToDoState>(builder: (context,state){
        if (state.todoList.isEmpty){
         return Center(child: Text("Is not found"),);
        }
        else if (state.todoList.isNotEmpty){
          return ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              primary: false,

              itemBuilder: (context,index){
                return ListTile(
                  leading: Text("1"),
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),

                );
              });
        }else{
          return SizedBox();
        }

      })

    );
  }
}
