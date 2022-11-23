import 'package:flutter/material.dart';
import 'package:ridwan/base/colors.dart';
import 'package:ridwan/base/components/atoms/text.dart';

class TMCard extends StatelessWidget {
  const TMCard({
    Key? key,
    required this.title,
    this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
    this.labelColor,
    this.leading,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Color? labelColor;
  final Widget? leading;
  final Widget? trailing;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Material(
        color: TBColors.tbTransparent,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              if (trailing != null) ...[
                trailing!,
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TAText.title2Medium(
                      text: title,
                    ),
                    const SizedBox(height: 4),
                    if (subtitle != null)
                      Row(
                        children: [
                          if (subtitle != null)
                            TAText.subtitle2Regular(
                              text: subtitle!,
                              color: TBColors.tbCharcoalLight50,
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
