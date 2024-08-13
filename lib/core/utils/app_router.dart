import 'package:bookly_app/features/Home/presentation/views/BookDetailesView.dart';
import 'package:bookly_app/features/Home/presentation/views/HomeView.dart';
import 'package:bookly_app/features/search/presentaion/views/searchView.dart';
import 'package:bookly_app/features/splash/presentation/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
 static  const kHomeView='/homeView';
 static  const kBookDetailsView='/bookdetailsview';
 static const kSearchView='searchView'; 
 static final router=GoRouter(
 
  routes:[
    GoRoute(
      path:'/',
      builder:(context,state)=> const SplashView(),
    ),
     GoRoute(
      path:kHomeView,
      builder:(context,state)=> const HomeView(),
    ),
     GoRoute(
      path: kSearchView,
      builder:(context,state)=> const SearchView(),
    ),
     GoRoute(
      path: kBookDetailsView,
      builder:(context,state)=> const BookDeatilesView(),
    ),
  ]
);
}