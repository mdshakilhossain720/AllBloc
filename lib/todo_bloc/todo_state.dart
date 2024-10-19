import 'package:equatable/equatable.dart';

class ToDoState extends Equatable{
  final List<String>todoList;
  ToDoState({this.todoList=const[]});

  ToDoState copyWith({List<String>? todolist}){
    return ToDoState(
      todoList: todolist ?? this.todoList
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [todoList];

}
