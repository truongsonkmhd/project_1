
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/blocs_dong_ho/time_bloc0/time.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<TimeBloc>(
        create: (context) => TimeBloc(),
        child: BlocBuilder<TimeBloc, TimeState>(
          builder: (context, state) {
            final String minuteStr = ((state.timeDuration ~/ 60)
                .toString()
                .padLeft(2, '0'));
            final String secondStr = ((state.timeDuration % 60)
                .toString()
                .padLeft(2, '0'));
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$minuteStr:$secondStr',
                    style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buttons(context, state),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  buttons(context, state) {
    final TimeBloc timeBloc = BlocProvider.of<TimeBloc>(context);
    if (state is InitialState) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () => timeBloc.add(StartEvent(state.timeDuration)),
        ),
      ];
    } else if (state is RunningState) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.pause),
          onPressed: () => timeBloc.add(PauseEvent()),
        ),
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () => timeBloc.add(ResetEvent()),
        )
      ];
    } else if (state is PauseState) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () => timeBloc.add(ResumeEvent()),
        ),
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () => timeBloc.add(ResetEvent()),
        )
      ];
    } else if (state is CompletedState) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () => timeBloc.add(ResetEvent()),
        )
      ];
    } else {
      // fallback, return empty list of buttons
      return [];
    }
  }
}
