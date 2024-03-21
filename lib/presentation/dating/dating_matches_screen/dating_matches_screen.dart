import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_match_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_matches_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/notifier/dating_matches_notifier.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/widgets/dating_match_item_widget.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/widgets/dating_matches_item_widget.dart';
part 'widgets/dating_build_match_widget.dart';
part 'widgets/dating_build_matches_widget.dart';

Widget buildMatchesScreen(BuildContext context) {
  return Container(
    width: double.maxFinite,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        _buildMatches(context),
        const SizedBox(height: 25),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: LocalizationKeys.lblYourMatches.name.tr,
                style: theme.textTheme.titleLarge,
              ),
              TextSpan(
                text: LocalizationKeys.lbl47.name.tr,
                style: CustomTextStyles.titleLargeffdd88cf,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 23),
        Expanded(
          child: _buildMatch(context),
        ),
      ],
    ),
  );
}
