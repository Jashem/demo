import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import 'widgets.dart';

class TrendingSellerList extends StatelessWidget {
  const TrendingSellerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingsellerBloc, TrendingsellerState>(
      builder: (context, state) {
        switch (state.status) {
          case TrendingsellerStatus.failure:
            return const SizedBox();
          case TrendingsellerStatus.success:
            return TrendingCardScaffold(
              title: "Trending Sellers",
              list: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SellerCard(
                    backgroundImage: state.sellers[index].sellerItemPhoto,
                    profileImage: state.sellers[index].sellerProfilePhoto,
                    sellerName: state.sellers[index].sellerName,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
                itemCount: state.sellers.length,
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
