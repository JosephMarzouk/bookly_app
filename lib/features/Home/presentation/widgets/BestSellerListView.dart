import 'package:bookly_app/core/widgets/CustomErrorWidget.dart';
import 'package:bookly_app/core/widgets/CustomLoadingIndecator.dart';
import 'package:bookly_app/features/Home/presentation/manager/NewestBooksCubit/newset_books_cubit_cubit.dart';
import 'package:bookly_app/features/Home/presentation/widgets/BestSellerListViewItem.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubitCubit, NewsetBooksCubitState>(

      builder: (context, state) {
        if(state is NewsetBooksCubitSucess){
           return ListView.builder(

            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            });
        }
       else if(state is NewsetBooksCubitFailure)
       {
       return CustomErrorWidget(errorText: state.errMessage,);
       }
       else {
        return const CustomLoadingIndecator();
       }
      },
    );
  }
}
