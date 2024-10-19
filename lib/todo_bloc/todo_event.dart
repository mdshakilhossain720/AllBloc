import 'package:equatable/equatable.dart';

abstract class ToDOEvents extends Equatable{

  ToDOEvents();
}

class AddToEvents extends ToDOEvents{
  final String task;
  AddToEvents({required this.task});

  @override
  List<Object?>get props=>[task];
}

class RemoveToEvents extends ToDOEvents{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
