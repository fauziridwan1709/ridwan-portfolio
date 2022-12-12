import 'package:flutter/material.dart';
import 'package:ridwan/base/colors.dart';
import 'package:ridwan/base/components/atoms/atoms.dart';

class OTopNavigation extends StatelessWidget {
  const OTopNavigation({
    Key? key,
    required this.labels,
    this.onChange,
  }) : super(key: key);

  final List<String> labels;
  final Function(int index)? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: TBColors.tbWhite,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Expanded(
            child: Row(
              children: labels
                  .map(
                    (label) => Expanded(
                      child: _TopNavigationMenuItem(
                        label: label,
                        onTap: () => onChange?.call(labels.indexOf(label)),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: TBColors.tbBlack),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TopNavigationMenuItem extends StatelessWidget {
  const _TopNavigationMenuItem({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TAText(text: label),
    );
  }
}
