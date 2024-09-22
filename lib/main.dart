import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/Home/data/repos/hom_repo_impl.dart';
import 'package:bookly_app/features/Home/presentation/manager/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/manager/cubit/newset_books_cubit_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServicelocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(HomeRepoImpl(ApiService(Dio()))), 
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubitCubit(HomeRepoImpl(ApiService(Dio()))), 
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
