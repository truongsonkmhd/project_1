import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'time.dart'; // cta tạo như này để nó đỡ phải gọi đi gọi lại nhiều lần


class TimeBloc extends Bloc<TimeEvent, TimeState> {
  static  int _timeDuration = 60;
  StreamSubscription<int>? _timeSubscription;
  TimeBloc() : super(InitialState(_timeDuration)) {
    on<StartEvent>((event, emit) {
      /*Tham số event là đối tượng của lớp sự kiện tương ứng với loại sự kiện được đăng ký.
       Tham số emit là một hàm callback được sử dụng để phát ra các trạng thái mới của TimeBloc.*/
      emit(RunningState(event.timeDuration));

      _timeSubscription?.cancel();
      _timeSubscription = changeTime(event.timeDuration).listen((timeDuration) {
        emit(RunEvent(timeDuration) as TimeState);
      });
    });

    on<RunEvent>((event, emit) {
      emit(event.timeDuration > 0 ? RunningState(_timeDuration) : CompletedState(0));
      //  CompletedState là một lớp trạng thái của TimeBloc, thể hiện trying thái của khối thời gian khi quá trình chạy đã kết thúc (hoàn tất)
    });

    on<PauseEvent>((event, emit) {
      _timeSubscription?.pause();
      emit(PauseState(state.timeDuration));
    });

    on<ResumeEvent>((event, emit) {
      _timeSubscription?.resume();
      emit(RunningState(state.timeDuration));
    });

    on<ResetEvent>((event, emit) {
      _timeSubscription?.cancel();
      emit(InitialState(_timeDuration));
    });
  }

  Stream<int> changeTime(int time) {
    return Stream.periodic(const Duration(seconds: 1), (x) => (time - x - 1).abs()).take(time);
  }
}

// =>tóm lại:  với event này trả về state xử lý state với cái state đó nó xử lý tác vụ gì
