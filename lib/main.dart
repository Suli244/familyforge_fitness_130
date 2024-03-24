import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/get_reminders_cubit/get_rempovsdvsdv.dart';
import 'package:familyforge_fitness_130/reminders/logic/cubits/todo_get_cubit/todo_get_cubit.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/remindsvmskvsdvds.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:familyforge_fitness_130/settings/familyforge_fitness_adadpad.dart';
import 'package:familyforge_fitness_130/splash/ssaplaaash_sacnacacs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FamilyforgeFitnessAdapty().initializeFamilyforgeFitnessAdapty();
  await Hive.initFlutter();
  Hive.registerAdapter(RemcskcnsdcHHHAdapter());
  Hive.registerAdapter(TodoHiveModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetRemindersCubit(RepossImpl()),
        ),
        BlocProvider(
          create: (context) => GetTodoCubit(TodoRepoImpl()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FamilyForge Fitness',
          home: child,
          theme: ThemeData(
            fontFamily: 'SFProDisplay',
            splashColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
            scaffoldBackgroundColor: FFColors.black1,
            appBarTheme: const AppBarTheme(
              backgroundColor: FFColors.black1,
            ),
          ),
        ),
        child: const SplashScreen(),
      ),
    );
  }
}
