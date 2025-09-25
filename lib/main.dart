import 'package:bloc_practice/dart_practice/context_mounted_test/page1.dart';
import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_bloc.dart';
import 'package:bloc_practice/data/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_bloc.dart';
import 'package:bloc_practice/data/bloc/loader/loader_bloc.dart';
import 'package:bloc_practice/data/bloc/location_bloc/bloc/location_bloc_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/bloc/status_bloc/status_bloc.dart';
import 'package:bloc_practice/data/bloc/switch_slider/bloc/switch_slider_bloc.dart';
import 'package:bloc_practice/data/bloc/weather_bloc/bloc/weather_bloc_bloc.dart';
import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_cubit.dart';
import 'package:bloc_practice/data/cubit/counter/counter_cubit.dart';
import 'package:bloc_practice/data/cubit/cubit_post_api/cubit/cubit_post.dart';
import 'package:bloc_practice/data/cubit/cubit_post_details/cubit/post_details_cubit.dart';
import 'package:bloc_practice/data/cubit/filter_cubit/filter_cubit.dart';
import 'package:bloc_practice/data/cubit/image_picker_cubit/cubit/image_picker_cubit.dart';
import 'package:bloc_practice/data/cubit/internet_status/internet_status_cubit.dart';
import 'package:bloc_practice/data/cubit/loader/loading_cubit.dart';
import 'package:bloc_practice/data/cubit/login/login_cubit.dart';
import 'package:bloc_practice/data/cubit/on_boading_cubit/on_boading_cubit.dart';
import 'package:bloc_practice/data/cubit/pagination_cubit/pagination_cubit.dart';
import 'package:bloc_practice/data/cubit/status_cubit/status_cubit.dart';
import 'package:bloc_practice/data/cubit/switch_slider/cubit/switch_slider_cubit.dart';
import 'package:bloc_practice/data/cubit/theme_change_cubit/theme_change_cubit.dart';
import 'package:bloc_practice/data/cubit/theme_change_cubit/theme_change_state.dart';
import 'package:bloc_practice/data/cubit/todo_app/todo_cubit.dart';
import 'package:bloc_practice/data/data_provider/post_data_provider.dart';
import 'package:bloc_practice/data/data_provider/post_details_provider.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:bloc_practice/data/repository/post_details_repository.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:bloc_practice/data/service/internet_service/internet_service.dart';
import 'package:bloc_practice/presentation/bloc_screens/grocery_bloc_screen/grocery_bloc_screen.dart';
import 'package:bloc_practice/presentation/bloc_screens/login_bloc_screen/login_bloc_screen.dart';
import 'package:bloc_practice/presentation/bloc_screens/post_screen_bloc/post_screen_bloc.dart';
import 'package:bloc_practice/presentation/bloc_screens/status_bloc_screen/status_bloc_screen.dart';
import 'package:bloc_practice/presentation/bloc_screens/switch_slider_bloc_screen/switch_slider_bloc_screen.dart';
import 'package:bloc_practice/presentation/bloc_screens/weather_app_bloc_screen/weather_home_bloc_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen/screen/cubit/first_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/bloc/bottom_sheet_bloc.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/main_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/filter_screen_cubit/filter_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/image_picker_screen/image_picker_cubit_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/internect_connection_status_screen/internet_connection_status_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/on_boading_screen/main_onbading_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/pagination_screen/pagination_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/post_screen_cubit/post_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/status_cubit_screen/status_cubit_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/switch_slider_cubit_screen/switch_slider_cubit_scree.dart';
import 'package:bloc_practice/presentation/cubit_screens/todo_screen/todo_list_screen.dart';
import 'package:bloc_practice/presentation/go_router_example/home_page.dart';
import 'package:bloc_practice/presentation/go_router_example/routes_manager.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/route_handler/route_handler.dart';
import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_main_screen.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/attendance_model/attendance_model.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/todo_model.dart';
import 'package:bloc_practice/presentation/ui_practice/custom_scroll.dart';
import 'package:bloc_practice/presentation/ui_practice/scrolling_forward_reverse.dart';
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
  Hive.registerAdapter(AttendanceModelAdapter());
  HiveBoxConst.instance.todoBox =
      await Hive.openBox<TodoModel>(HiveBoxConst.todoBoxName);
  HiveBoxConst.instance.groceryBox =
      await Hive.openBox<GroceryItem>(HiveBoxConst.groceryBoxName);
  HiveBoxConst.instance.checkStateBox =
      await Hive.openBox<AttendanceModel>(HiveBoxConst.checkStateBoxname);

  HiveBoxConst.instance.themeBox =
      await Hive.openBox<bool>(HiveBoxConst.themeBoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeMode themeMode = ThemeMode.system;
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
            create: (context) => getIt<CubitPost>()),

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

        BlocProvider(create: (context) => getIt<PaginationCubit>()),

        BlocProvider(create: (context) => CheckinOutCubit()),

        BlocProvider(create: (context) => FilterCubit()),

        BlocProvider(create: (context) => ThemeChangeCubit()),

        BlocProvider(create: (context) => SecondScreenCubit()),

        BlocProvider(create: (context) => WeatherBlocBloc()),

        BlocProvider(create: (context) => LocationBlocBloc()..add(LocationBlocEvent.getCurrentLocation())),

        BlocProvider(create: (context) => BottomSheetBloc())
      ],
      child: ToastificationWrapper(
        child: BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
          builder: (context, state) {
            return MaterialApp(
              themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
              theme: ThemeData(
                brightness: Brightness.light,
                colorScheme: ColorScheme.light(
                  primary: Colors.blue, // Your primary color for light theme
                  secondary:
                      Colors.green, // Your secondary color for light theme
                  background: Colors.white, // Background color for light theme
                  // ... other colors
                ),
                // ... other theme properties like appBarTheme, textTheme, etc.
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                colorScheme: ColorScheme.dark(
                  primary: Colors.indigo, // Your primary color for dark theme
                  secondary: Colors.teal, // Your secondary color for dark theme
                  background: Colors.black, // Background color for dark theme
                  // ... other colors
                ),
              ),
              debugShowCheckedModeBanner: false,
              title: 'Material App',
              home: MainScreen(),
              //routerConfig: RouteHandler.routerConfig,
            );
          },
        ),
      ),
      // ),
    );
  }
}
