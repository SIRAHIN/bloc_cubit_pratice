import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_bloc.dart';
import 'package:bloc_practice/data/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_bloc.dart';
import 'package:bloc_practice/data/bloc/loader/loader_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/bloc/status_bloc/status_bloc.dart';
import 'package:bloc_practice/data/bloc/switch_slider/bloc/switch_slider_bloc.dart';
import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_cubit.dart';
import 'package:bloc_practice/data/cubit/counter/counter_cubit.dart';
import 'package:bloc_practice/data/cubit/cubit_post_api/cubit/cubit_post.dart';
import 'package:bloc_practice/data/cubit/cubit_post_details/cubit/post_details_cubit.dart';
import 'package:bloc_practice/data/cubit/image_picker_cubit/cubit/image_picker_cubit.dart';
import 'package:bloc_practice/data/cubit/internet_status/internet_status_cubit.dart';
import 'package:bloc_practice/data/cubit/loader/loading_cubit.dart';
import 'package:bloc_practice/data/cubit/login/login_cubit.dart';
import 'package:bloc_practice/data/cubit/on_boading_cubit/on_boading_cubit.dart';
import 'package:bloc_practice/data/cubit/pagination_cubit/pagination_cubit.dart';
import 'package:bloc_practice/data/cubit/status_cubit/status_cubit.dart';
import 'package:bloc_practice/data/cubit/switch_slider/cubit/switch_slider_cubit.dart';
import 'package:bloc_practice/data/cubit/todo_app/todo_cubit.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:bloc_practice/data/service/internet_service/internet_service.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/main_screen.dart';
import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:toastification/toastification.dart';

//void main() => runApp(const MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  // Enable verbose logging for debugging (remove in production)
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  // Initialize with your OneSignal App ID
  OneSignal.initialize("e90c2b87-ef06-43f6-bfef-417b839f5aa7");
  // Use this method to prompt for push notifications.
  // We recommend removing this method after testing and instead use In-App Messages to prompt for notification permission.
  OneSignal.Notifications.requestPermission(true);

  await getIt<InternetService>().initializeInternetService(isFirstTime: true);
  await Hive.initFlutter();
  Hive.registerAdapter(TodoModelAdapter());
  Hive.registerAdapter(GroceryItemAdapter());
  HiveBoxConst.instance.todoBox =
      await Hive.openBox<TodoModel>(HiveBoxConst.todoBoxName);
  HiveBoxConst.instance.groceryBox =
      await Hive.openBox<GroceryItem>(HiveBoxConst.groceryBoxName);    
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
        // == Respository Provier == //
        // RepositoryProvider(
        //   create: (context) => PostRepository(),
        // ),
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
          create: (context) => ApiCallingBloc(),
        ),
        BlocProvider(
          create: (context) => PostDetailsBloc(),
        ),

        // Cubit Api Calling Provider //
        BlocProvider(
            create: (context) => CubitPost(
                // getIt<PostRepository>()
                )),

        BlocProvider(
          create: (context) => getIt<PostDetailsCubit>(),
        ),

        BlocProvider(create: (context) => ImagePickerCubit()),

        // BlocProvider(create: (context) => SwitchBloc()),

        //  BlocProvider(create: (context) => SliderBloc()),

        BlocProvider(create: (context) => SwitchSlideBloc()),

        BlocProvider(create: (context) => SwitchSliderCubit()),

        BlocProvider(create: (context) => StatusCubit()),

        BlocProvider(create: (context) => TaskStatusBloc()),

        BlocProvider(
            create: (context) =>
                InternetStatusCubit(service: getIt<InternetService>())),

        BlocProvider(
          create: (context) => BottomNavScreenCubit(),
        ),

        BlocProvider(
          create: (context) => OnBoadingCubit(),
        ),

        BlocProvider(create: (context) => GroceryBloc()),
        
        BlocProvider(create: (context) => getIt<PaginationCubit>())
      ],
      child: ToastificationWrapper(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: MainScreen(),
          //routerConfig: RoutesManager.routerConfig,
        ),
      ),
      // ),
    );
  }
}
