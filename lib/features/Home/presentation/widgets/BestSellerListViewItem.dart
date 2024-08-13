import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/widgets/BookRaiting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';



class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(ASsetsData.testImage),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child:  Text(
                        "Harry Potter and the Goblet of fire",
                        style: Styles.textStyle20.copyWith(fontFamily: kGtSectrafine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(height: 3),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                   const SizedBox(height: 3),
                  Row(children: [
                    Text("199 \$",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                   const Spacer(flex: 1,),
                   const BookRaiting(),
                    const Spacer(flex: 1,),
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
