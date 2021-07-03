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
        BlocProvider(
          create: (_) => StoryBloc(
            repository: context.read<Repository>(),
          )..add(StoryFetched()),
        ),
        BlocProvider(
          create: (_) => NewArrivalBloc(
            repository: context.read<Repository>(),
          )..add(NewArrivalFetched()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              TrendingSellerList(),
              TrendingProductList(),
              StoryList(),
            ],
          ),
        ),
      ),
    );
  }
}

class StoryList extends StatelessWidget {
  const StoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryBloc, StoryState>(
      builder: (_, state) {
        switch (state.status) {
          case StoryStatus.failure:
            return SizedBox();
          case StoryStatus.success:
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.stories.length + 2,
              itemBuilder: (_, index) {
                var itemIndex = index;
                if (index == 3) {
                  return NewArrivalList();
                }
                if (index == 7) {
                  return SizedBox();
                }
                if (index > 2) {
                  itemIndex -= 1;
                }
                if (index > 5) {
                  itemIndex -= 1;
                }

                return StoryCard(
                  profileImage: state.stories[itemIndex].shopLogo,
                  name: state.stories[itemIndex].shopName,
                  time: state.stories[itemIndex].friendlyTimeDiff,
                  story: state.stories[itemIndex].story,
                  storyImage: state.stories[itemIndex].storyImage,
                  price:
                      "${state.stories[itemIndex].unitPrice} ${state.stories[itemIndex].currencyCode}",
                  availableStock:
                      "${state.stories[itemIndex].availableStock} Available Stock",
                  order: "${state.stories[itemIndex].orderQty} order(s)",
                );
              },
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
