import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_bloc.dart';
import 'package:bloc_practice/data/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/data/bloc/loader/loader_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/bloc/switch_slider/bloc/switch_slider_bloc.dart';
import 'package:bloc_practice/data/cubit/counter/counter_cubit.dart';
import 'package:bloc_practice/data/cubit/cubit_post_api/cubit/cubit_post.dart';
import 'package:bloc_practice/data/cubit/cubit_post_details/cubit/post_details_cubit.dart';
import 'package:bloc_practice/data/cubit/image_picker_cubit/cubit/image_picker_cubit.dart';
import 'package:bloc_practice/data/cubit/loader/loading_cubit.dart';
import 'package:bloc_practice/data/cubit/login/login_cubit.dart';
import 'package:bloc_practice/data/cubit/switch_slider/cubit/switch_slider_cubit.dart';
import 'package:bloc_practice/data/cubit/todo_app/todo_cubit.dart';
import 'package:bloc_practice/data/data_provider/post_data_provider.dart';
import 'package:bloc_practice/data/data_provider/post_details_provider.dart';
import 'package:bloc_practice/data/repository/post_details_repository.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:bloc_practice/presentation/bloc_screens/post_screen_bloc/post_screen_bloc.dart';
import 'package:bloc_practice/presentation/bloc_screens/switch_slider_bloc_screen/switch_slider_bloc_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/image_picker_screen/image_picker_cubit_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/post_screen_cubit/post_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/switch_slider_cubit_screen/switch_slider_cubit_scree.dart';
import 'package:bloc_practice/presentation/cubit_screens/todo_screen/todo_list_screen.dart';
import 'package:bloc_practice/presentation/go_router_example/home_page.dart';
import 'package:bloc_practice/presentation/go_router_example/routes_manager.dart';
import 'package:bloc_practice/presentation/ui_practice/custom_scroll.dart';
import 'package:bloc_practice/presentation/ui_practice/scrolling_forward_reverse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//void main() => runApp(const MyApp());

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // MultiRepositoryProvider(
    //   providers: [
    //     RepositoryProvider(
    //       create: (context) => PostRepository(
    //         postDataProvider: PostDataProvider(),
    //       ),
    //     ),
    //     RepositoryProvider(
    //       create: (context) => PostDetailsRepository(
    //         postDetailsProvider: PostDetailsProvider(),
    //       ),
    //     ),
    //   ],
    //   child: 
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
          BlocProvider(
            create: (context) => CounterBlocs(),
          ),
          BlocProvider(
            create: (context) => LoadingCubit(),
          ),
          BlocProvider(
            create: (context) => LoadingBloc(),
          ),
          BlocProvider(
            create: (context) => TodoCubit(),
          ),
          BlocProvider(
            create: (context) => LoginBloc(),
          ),
          BlocProvider(
            create: (context) => LoginCubit(),
          ),

          // Bloc Api Calling Provider //
          BlocProvider(
            create: (context) => ApiCallingBloc(
              
            ),
          ),
          BlocProvider(
            create: (context) => PostDetailsBloc(
             
            ),
          ),

          // Cubit Api Calling Provider //
          BlocProvider(
              create: (context) => CubitPost(
                    context.read<PostRepository>(),
                  )),

          BlocProvider(
            create: (context) => PostDetailsCubit(
              context.read<PostDetailsRepository>(),
            ),
          ),

          BlocProvider(create: (context) => ImagePickerCubit()),

          // BlocProvider(create: (context) => SwitchBloc()),

          //  BlocProvider(create: (context) => SliderBloc()),

          BlocProvider(create: (context) => SwitchSlideBloc()),

          BlocProvider(create: (context) => SwitchSliderCubit()),
        ],
        child: MaterialApp(
          title: 'Material App',
          home: CustomBottomSheet(),
          //routerConfig: RoutesManager.routerConfig,
        ),
     // ),
    );
  }
}
