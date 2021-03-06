import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).science;
        return (list.isNotEmpty)
            ? ListView.separated(
              physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildArticleItem(list[index], context),
                separatorBuilder: (context, index) => mySeparator(),
                itemCount: 10,
              )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}