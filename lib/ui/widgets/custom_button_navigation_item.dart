import 'package:bwa_airplane_ticket/cubit/page_cubit.dart';
import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final int index;
  final String imgUrl;
  const CustomButtonNavigationItem({
    Key? key,
    required this.index,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int stateValue = context.watch<PageCubit>().state;
    // ignore: avoid_print
    print('$stateValue');
    return GestureDetector(
      onTap: () {
        // context.read<PageCubit>().setPage(index);
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imgUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimary
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? kPrimary
                  : kTranparent,
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
