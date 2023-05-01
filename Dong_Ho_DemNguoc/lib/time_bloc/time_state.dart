import 'package:equatable/equatable.dart';

class TimeState extends Equatable{ // Equatable: so sánh giữa các đối tượng ( các lớp , object )
  final int timeDuration;
  const TimeState(this.timeDuration);
  @override
  List<Object?> get props => [timeDuration];
}

class InitialState extends TimeState{ // trạng thái ban đầu
  final int timeDuration;
  const InitialState(this.timeDuration) : super(timeDuration);
}

class RunningState extends TimeState{ // trạng thái bắt đầu chạy
  final int timeDuration;
  const RunningState(this.timeDuration) : super(timeDuration);
}

class PauseState extends TimeState{ // dừng lại trang thái
  final int timeDuration;
  const PauseState(this.timeDuration) : super(timeDuration);
}

class CompletedState extends TimeState{ // trạng thái hoàng thành
  final int timeDuration;
  const CompletedState(this.timeDuration) : super(0); // trạng thái hoàn thành
}
