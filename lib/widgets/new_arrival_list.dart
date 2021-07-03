import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import 'widgets.dart';

class NewArrivalList extends StatelessWidget {
  const NewArrivalList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewArrivalBloc, NewArrivalState>(
      builder: (_, state) {
        switch (state.status) {
          case NewArrivalStatus.failure:
            return SizedBox();
          case NewArrivalStatus.success:
            return TrendingCardScaffold(
              title: "New Arrivals",
              list: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return ProductCard(
                    name: state.arrivals[index].productName,
                    details: state.arrivals[index].shortDetails,
                    image: state.arrivals[index].productImage,
                  );
                },
                separatorBuilder: (_, index) => SizedBox(
                  width: 8,
                ),
                itemCount: state.arrivals.length,
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
