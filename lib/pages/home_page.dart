import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import '../resources/repository.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => TrendingsellerBloc(
            repository: context.read<Repository>(),
          )..add(TrendingSellerFetched()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TrendingSellerList(),
              TrendingCardScaffold(
                title: "Trending Products",
                list: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
