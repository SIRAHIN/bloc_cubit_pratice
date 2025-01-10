import 'package:bloc_practice/data/bloc/switch_slider/bloc/switch_slider_bloc.dart';
import 'package:bloc_practice/data/bloc/switch_slider/bloc/switch_slider_state.dart';
import 'package:bloc_practice/data/cubit/switch_slider/cubit/switch_slider_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchSliderCubitScree extends StatelessWidget {
  const SwitchSliderCubitScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Slider Bloc Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add Switch
            BlocBuilder<SwitchSliderCubit, SwitchSliderCubitState>(
              builder: (context, state) {
                return Switch(
                  value: state.isSwitched,
                  onChanged: (value) {
                    context.read<SwitchSliderCubit>().toggleSwitch();
                  },
                );
              },
            ),

            //Container
            BlocBuilder<SwitchSliderCubit, SwitchSliderCubitState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Container(
                      height: 220,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(state.sliderValue)),
                    ),

                    // Add Slider
                    Slider(
                      value: state.sliderValue,
                      min: 0.0,
                      max: 1.0,
                      onChanged: (value) {
                        context.read<SwitchSliderCubit>().updateSliderValue(value);
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
