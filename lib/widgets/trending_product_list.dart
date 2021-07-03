import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import 'widgets.dart';

class TrendingProductList extends StatelessWidget {
  const TrendingProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingProductBloc, TrendingProductState>(
        builder: (_, state) {
      switch (state.status) {
        case TrendingProductStatus.failure:
          return SizedBox();
        case TrendingProductStatus.success:
          return TrendingCardScaffold(
            title: "Trending Products",
            list: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return ProductCard(
                    name: state.products[index].productName,
                    details: state.products[index].shortDetails,
                    image: state.products[index].productImage,
                  );
                },
                separatorBuilder: (_, index) => SizedBox(
                      width: 8,
                    ),
                itemCount: state.products.length),
          );
        default:
          return SizedBox();
      }
    });
  }
}
