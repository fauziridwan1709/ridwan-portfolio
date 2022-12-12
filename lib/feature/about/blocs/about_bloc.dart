import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'about_event.dart';
part 'about_state.dart';

@injectable
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc() : super(AboutInitial()) {
    on<AboutEvent>((event, emit) {
      // TODO(any): implement event handler
    });
  }
}
