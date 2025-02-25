import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/todo.dart';
import 'todo_event.dart';
import 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<AddTodo>(_onAddTodo);
    on<ToggleTodo>(_onToggleTodo);
    on<DeleteTodo>(_onDeleteTodo);
  }

  void _onAddTodo(AddTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoaded) {
      final todo = Todo(
        id: DateTime.now().toString(),
        title: event.title,
      );
      emit(TodoLoaded(todos: [...state.todos, todo]));
    } else {
      final todo = Todo(
        id: DateTime.now().toString(),
        title: event.title,
      );
      emit(TodoLoaded(todos: [todo]));
    }
  }

  void _onToggleTodo(ToggleTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoaded) {
      final todos = state.todos.map((todo) {
        return todo.id == event.id
            ? todo.copyWith(isCompleted: !todo.isCompleted)
            : todo;
      }).toList();
      emit(TodoLoaded(todos: todos));
    }
  }

  void _onDeleteTodo(DeleteTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoaded) {
      final todos = state.todos.where((todo) => todo.id != event.id).toList();
      emit(TodoLoaded(todos: todos));
    }
  }
}
