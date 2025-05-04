import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_path/bloc/api_service_cubit/api_service_cubit.dart';
import 'package:short_path/bloc/data_service_cubit/data_service_cubit.dart';
import 'package:short_path/models/answer.dart';
import 'package:short_path/screens/result_list_screen/result_list_screen.dart';
import 'package:short_path/widgets/custom_app_bars/custom_app_bar.dart';
import 'package:short_path/widgets/custom_buttons/custom_button.dart';

class ProcessScreen extends StatefulWidget {
  static final String routeName = '/process_screen';

  const ProcessScreen({super.key});

  @override
  State<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> {
  @override
  void initState() {
    super.initState();
  }

  void sendResultsAction(List<Answer> answers) {
    context.read<ApiServiceCubit>().sendData(answers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleName: 'Process screen'),
      body: BlocConsumer<ApiServiceCubit, ApiServiceState>(
        listener: (context, apiState) {
          if (apiState.status == ApiServiceStatus.sent) {
            Navigator.of(context).pushNamed(ResultListScreen.routeName);
          }
        },
        builder: (context, state) {
          return BlocBuilder<DataServiceCubit, DataServiceState>(
            builder: (context, dataState) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 30,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            spacing: 16,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'All calculations has finished, you can send your results to server',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                '${dataState.progress.toString()}%',
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(
                                height: 100,
                                width: 100,
                                child: CircularProgressIndicator(
                                  value:dataState.progress/100,
                                  strokeWidth: 6.0,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        dataState.status ==
                                DataServiceStatus.calculateInProgress
                            ? SizedBox.shrink()
                            : CustomButton(
                              name: 'Send result to server',
                              onPressed:
                                  state.status == ApiServiceStatus.loading
                                      ? null
                                      : () {
                                        sendResultsAction(dataState.answers);
                                      },
                            ),
                      ],
                    ),
                  ),
                  state.status == ApiServiceStatus.loading
                      ? Center(child: CircularProgressIndicator())
                      : SizedBox.shrink(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
