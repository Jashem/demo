import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import 'widgets.dart';

class NewShopList extends StatelessWidget {
  const NewShopList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewShopBloc, NewShopState>(
      builder: (context, state) {
        switch (state.status) {
          case NewShopStatus.failure:
            return const SizedBox();
          case NewShopStatus.success:
            return TrendingCardScaffold(
              title: "Trending Sellers",
              list: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SellerCard(
                    backgroundImage: state.shops[index].sellerItemPhoto,
                    profileImage: state.shops[index].sellerProfilePhoto,
                    sellerName: state.shops[index].sellerName,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
                itemCount: state.shops.length,
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
