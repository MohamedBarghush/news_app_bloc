import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/components/components.dart';
import 'package:news_app_bloc/cubit/cubit.dart';
import 'package:news_app_bloc/cubit/states.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (context, state) {
        return ConditionalBuilder(
          condition: NewsCubit.get(context).science.isNotEmpty,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildArticleItem(NewsCubit.get(context).science[index], context),
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              color: Colors.grey,
            ),
            itemCount: NewsCubit.get(context).science.length,
          ),
          fallback: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}