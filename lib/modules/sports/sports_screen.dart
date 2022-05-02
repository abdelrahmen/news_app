import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).sports;
        return (list.isNotEmpty)
            ? ListView.separated(
              physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildArticleItem(list[index]),
                separatorBuilder: (context, index) => mySeparator(),
                itemCount: 10,
              )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}