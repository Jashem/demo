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
        BlocProvider(
          create: (_) => TrendingProductBloc(
            repository: context.read<Repository>(),
          )..add(TrendingProductFetched()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TrendingSellerList(),
              TrendingProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
