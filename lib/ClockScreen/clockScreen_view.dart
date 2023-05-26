import 'package:animal_crossing_clock/ClockScreen/widgets/backgroundTheme.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import '../exports.dart';

class ClockScreenView extends StackedView<ClockScreenModel> {
  @override
  const ClockScreenView({super.key});

  @override
  Widget builder(
      BuildContext context,
      ClockScreenModel viewModel,
      Widget? child
      ){

    return Scaffold(
      body : Stack(
        children : [

          // Background Theme
          BackgroundTheme(viewModel: viewModel),

          // Path
          PathWidget(viewModel: viewModel),

          // Tree
          TreeWidget(viewModel: viewModel),

          // Clock
          ClockWidget(viewModel: viewModel),

        ]
      )
    );
  }

  @override
  ClockScreenModel viewModelBuilder(BuildContext context) => ClockScreenModel();
}