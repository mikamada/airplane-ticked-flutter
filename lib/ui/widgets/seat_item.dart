import 'package:bwa_airplane_ticket/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. Available, 1. Selected, 2. Unavailable

  final int status;
  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundcolor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimary;
        case 2:
          return kUnavailableColoor;
        default:
          return kUnavailableColoor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimary;
        case 1:
          return kPrimary;
        case 2:
          return kUnavailableColoor;
        default:
          return kUnavailableColoor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextSyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundcolor(),
        borderRadius: BorderRadius.circular(
          15,
        ),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
