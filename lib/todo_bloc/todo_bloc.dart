
import 'package:bloc/bloc.dart';
import 'package:blocfullcourse/todo_bloc/todo_event.dart';
import 'package:blocfullcourse/todo_bloc/todo_state.dart';

class ToDOBloc extends Bloc<ToDOEvents,ToDoState>{
  ToDOBloc():super(ToDoState()){
    on<AddToEvents>(_addToEvents);

  }

  void _addToEvents(AddToEvents events,Emitter<ToDoState>emit){
    emit(state.todoList.toString());
  }



}
