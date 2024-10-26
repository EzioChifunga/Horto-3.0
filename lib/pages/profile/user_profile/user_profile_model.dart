import '/components/activity_user_box_widget.dart';
import '/components/article_banner_widget.dart';
import '/components/home_banner_widget.dart';
import '/components/top_button/top_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopButton component.
  late TopButtonModel topButtonModel1;
  // Model for TopButton component.
  late TopButtonModel topButtonModel2;
  // Model for ActivityUserBox component.
  late ActivityUserBoxModel activityUserBoxModel1;
  // Model for ActivityUserBox component.
  late ActivityUserBoxModel activityUserBoxModel2;
  // Model for HomeBanner component.
  late HomeBannerModel homeBannerModel1;
  // Model for HomeBanner component.
  late HomeBannerModel homeBannerModel2;
  // Model for ArticleBanner component.
  late ArticleBannerModel articleBannerModel1;
  // Model for ArticleBanner component.
  late ArticleBannerModel articleBannerModel2;
  // Model for ArticleBanner component.
  late ArticleBannerModel articleBannerModel3;

  @override
  void initState(BuildContext context) {
    topButtonModel1 = createModel(context, () => TopButtonModel());
    topButtonModel2 = createModel(context, () => TopButtonModel());
    activityUserBoxModel1 = createModel(context, () => ActivityUserBoxModel());
    activityUserBoxModel2 = createModel(context, () => ActivityUserBoxModel());
    homeBannerModel1 = createModel(context, () => HomeBannerModel());
    homeBannerModel2 = createModel(context, () => HomeBannerModel());
    articleBannerModel1 = createModel(context, () => ArticleBannerModel());
    articleBannerModel2 = createModel(context, () => ArticleBannerModel());
    articleBannerModel3 = createModel(context, () => ArticleBannerModel());
  }

  @override
  void dispose() {
    topButtonModel1.dispose();
    topButtonModel2.dispose();
    activityUserBoxModel1.dispose();
    activityUserBoxModel2.dispose();
    homeBannerModel1.dispose();
    homeBannerModel2.dispose();
    articleBannerModel1.dispose();
    articleBannerModel2.dispose();
    articleBannerModel3.dispose();
  }
}
