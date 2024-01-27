import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NavigationEvent {}

class NavigateToRegistrationEvent extends NavigationEvent {}

class NavigateToLoginEvent extends NavigationEvent {}

class NavigateToHomeEvent extends NavigationEvent {}



abstract class NavigationState {}

class InitialNavigationState extends NavigationState {}

class NavigatedToRegistrationState extends NavigationState {}

class NavigatedToLoginState extends NavigationState {}

class NavigatedToHomeState extends NavigationState {}



class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(InitialNavigationState()) {
    on<NavigateToRegistrationEvent>((event, emit) => emit(NavigatedToRegistrationState()));
    on<NavigateToLoginEvent>((event, emit) => emit(NavigatedToLoginState()));
    on<NavigateToHomeEvent>((event, emit) => emit(NavigatedToHomeState()));
  }
}