import 'package:flutter/material.dart';
import 'package:sahibindenmobile/presentation/my_product_not_on_sales_screen/my_product_not_on_sales_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../search_screen/search_screen.dart';
import 'bloc/home_bloc.dart';
import 'home_initial_page.dart';
import 'models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homeInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconhouseactive:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Rewindbluegray800:
        return AppRoutes.searchScreen;
      case BottomBarEnum.Favoritebluegray800:
        return "/";
      case BottomBarEnum.Lockbluegray800:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
      BuildContext context,
      String currentRoute,
      ) {
    switch (currentRoute) {
      case AppRoutes.homeInitialPage:
        return HomeInitialPage.builder(context);
      case AppRoutes.searchScreen:
        return SearchScreen.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
