import 'package:equatable/equatable.dart';
class TimeEvent extends Equatable{
  // dùng Equatable dùng để so sánh các lớp, rất tiện thay thế cho hashcode
  const TimeEvent();
  @override
  List<Object?> get props => [];
}

class StartEvent extends TimeEvent{
  final int timeDuration; // timeDuration: khoảng thời gian khởi tạo
  const StartEvent(this.timeDuration);
}

class RunEvent extends TimeEvent{
  final int timeDuration;
  const RunEvent(this.timeDuration);
}

class PauseEvent extends TimeEvent{ // đg chạy bấm pause thì State nó đã nắm được timeDuration thì k phải chuyền timeDuration vào event nữa
}

class ResumeEvent extends TimeEvent{
}

class ResetEvent extends TimeEvent{ // tự chuyền về mặc định ban đầu rồi nên không cần chuyển timeDuration
}
