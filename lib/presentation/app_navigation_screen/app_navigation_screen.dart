import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );
  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Color(0XFFFFFFFF),
          body: SafeArea(
            child: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Text(
                            "App Navigation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Color(0XFF000000),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Maintenance & Repair",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.maintenanceRepairScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Credit",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.creditScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "While Buying (Vehicle Comparison)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whileBuyingVehicleComparisonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Valuation",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleValuationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Valuation One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleValuationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Valuation Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleValuationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Damage Inquiry",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleDamageInquiryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Past Queries",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.pastQueriesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Auto Expertise",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.autoExpertiseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Buying Guide",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleBuyingGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Purchasing Guide in Eleven",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehiclePurchasingGuideInElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Buying Guide(Before Purchase)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleBuyingGuideBeforePurchaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Buying Guide(During Purchase)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleBuyingGuideDuringPurchaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Buying Guide(After Purchase)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleBuyingGuideAfterPurchaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Buying Guide(After Purchase) One",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleBuyingGuideAfterPurchaseOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Buying Guide(Auto Dictionary)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleBuyingGuideAutoDictionaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Valuation Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleValuationThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Valuation Four",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleValuationFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Valuation Five",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleValuationFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Auto Expertise One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.autoExpertiseOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Selling Guide",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleSellingGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Sales Guide in 7 Steps",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleSalesGuideIn7StepsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Sales Guide(Pre-Sale)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleSalesGuidePreSaleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Vehicle Sales Guide(During Sale)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vehicleSalesGuideDuringSaleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Sales Guide(Auto Dictionary)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleSalesGuideAutoDictionaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Vehicle Buying Guide(After Purchase) Two",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .vehicleBuyingGuideAfterPurchaseTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Zero Vehicle World",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.zeroVehicleWorldScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Zero Vehicle World (Vehicle Comparison)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .zeroVehicleWorldVehicleComparisonScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Zero Vehicle World (Zero Vehicle",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.zeroVehicleWorldZeroVehicleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Zero Vehicle World (Campaign Vehicles)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .zeroVehicleWorldCampaignVehiclesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Zero Vehicle World (Authorized",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.zeroVehicleWorldAuthorizedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Zero Vehicle World (Authorized One",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .zeroVehicleWorldAuthorizedOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Services",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.servicesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Real Estate 360",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.realEstate360Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "While Buying",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.whileBuyingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Real Estate 360(Real Estate Expertise)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .realEstate360RealEstateExpertiseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Property Buying Guide",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.propertyBuyingGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Property Buying Guide(Home Buying",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideHomeBuyingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(Auto Dictionary)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideAutoDictionaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(Before Purchase)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideBeforePurchaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(During Purchase)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideDuringPurchaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(After Purchase)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideAfterPurchaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(After Purchase) One",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideAfterPurchaseOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Real Estate 360(Real Estate Index)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.realEstate360RealEstateIndexScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Personal Information",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.personalInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Personal Information One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.personalInformationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Email",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.emailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mobile Phone",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.mobilePhoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Change Password",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.changePasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Account Cancellation",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accountCancellationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2 Step Verification",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.stepVerificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Delivery / Billing Address One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myDeliveryBillingAddressOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Delivery / Billing Address Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myDeliveryBillingAddressTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bank Information",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myBankInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bank Information One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myBankInformationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Head Office Address",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myHeadOfficeAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Purchase Transaction",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myPurchaseTransactionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Sales Transaction",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mySalesTransactionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "What I Got with Yepy",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whatIGotWithYepyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Ad Management (Summary)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.adManagementSummaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Credit One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.creditOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Credit Two",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.creditTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "While Renting",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whileRentingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "While Selling",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whileSellingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Services One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.servicesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Oto360",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.oto360Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Oto360 One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.oto360OneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Recovery Email",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.recoveryEmailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Session & Devices",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sessionDevicesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Account Activities",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accountActivitiesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Account Holder /  Blocked",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accountHolderBlockedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Oto360 Two",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.oto360TwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Oto360 Three",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.oto360ThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Maintenance & Repair One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.maintenanceRepairOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "What I Sold with Yepy",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whatISoldWithYepyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Summary",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.summaryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Current Orders",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myCurrentOrdersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Return & Cancellation",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.returnCancellationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Completed Orders",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.completedOrdersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Distance Contracts",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.distanceContractsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Products on Sale",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productsOnSaleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "What Will I Ship One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whatWillIShipOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "House Rental Guide",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.houseRentalGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Real Estate 360(Real Estate Index) One",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .realEstate360RealEstateIndexOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "House Rental Guide(10 Step Home",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.houseRentalGuide10StepHomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "House Rental Guide(Before Renting)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .houseRentalGuideBeforeRentingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "House Rental Guide(After Lease)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.houseRentalGuideAfterLeaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Rental Guide(After Lease)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeRentalGuideAfterLeaseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Real Estate 360(Real Estate Index) Two",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .realEstate360RealEstateIndexTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sales Guide",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.salesGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sales Guide(10 Step Sales Guide)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.salesGuide10StepSalesGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sales Guide(Pre-Sales)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.salesGuidePreSalesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sales Guide(During Sales)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.salesGuideDuringSalesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sales Guide(Pre-Sales) One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.salesGuidePreSalesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Approval From Buyer One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.approvalFromBuyerOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Return & Cancellation One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.returnCancellationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Successful Sales One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.successfulSalesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Products That Are Not On Sale",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProductsThatAreNotOnSaleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bank Information Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myBankInformationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Head Office Address One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myHeadOfficeAddressOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Distance Contracts One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.distanceContractsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Category Selection",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categorySelectionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Category Selection One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categorySelectionOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Category Selection Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categorySelectionTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Auto Expertise Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.autoExpertiseTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product Details",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(Auto Dictionary) One",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideAutoDictionaryOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Property Buying Guide(Auto Dictionary) Two",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .propertyBuyingGuideAutoDictionaryTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "My Delivery / Billing Address Three",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .myDeliveryBillingAddressThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Delivery / Billing Address Four",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myDeliveryBillingAddressFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Comment Management One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.commentManagementOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Messages",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messagesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Published Advertisements(Transactions)",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .publishedAdvertisementsTransactionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Published Advertisements(Expert",
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .publishedAdvertisementsExpertScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Test User",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.testUserScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Ad Management(On Air)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.adManagementOnAirScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Ad Management(Not on Air)",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.adManagementNotOnAirScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Test User One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.testUserOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Messages One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messagesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Information",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.informationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Test User Two",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.testUserTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home One",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Comparison List",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.comparisonListScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Test User Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.testUserThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Q - My Money is Safe",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.qMyMoneyIsSafeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Purchase Transaction One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myPurchaseTransactionOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Sales Transaction One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mySalesTransactionOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Delivery / Billing Address Five",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myDeliveryBillingAddressFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bank Information Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myBankInformationThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Bank Information Four",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myBankInformationFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Head Office Address Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myHeadOfficeAddressTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Test User Four",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.testUserFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Account Information",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myAccountInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Personal Information Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.personalInformationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Delete Account",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deleteAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Saved Cards",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.savedCardsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Test User Five",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.testUserFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help Guide Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.helpGuideTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help Guide Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.helpGuideThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help Guide",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.helpGuideScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Help Guide One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.helpGuideOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Problem / Suggestion Post",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.problemSuggestionPostScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "About",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.aboutScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Cookies",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cookiesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Comment Management",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.commentManagementScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Products I Purchased",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productsIPurchasedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Products I Sell",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productsISellScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Brand New Transactions",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myBrandNewTransactionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Permissions",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myPermissionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Message read information",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.messageReadInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Message read information One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.messageReadInformationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Communication",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.communicationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Safe Shopping Tips",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.safeShoppingTipsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Terms Of Use",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.termsOfUseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Terms of Use One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.termsOfUseOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Account Agreement",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accountAgreementScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Individual Account Agreement",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.individualAccountAgreementScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Protection of Personal Data",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.protectionOfPersonalDataScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Contracts",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.contractsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Rules and Policies",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rulesAndPoliciesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Cookie Management",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.cookieManagementScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Product Offers",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProductOffersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Account Transcation",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accountTranscationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Information Portal",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.informationPortalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Corporate Account",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.corporateAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "What I bought with Brand New",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whatIBoughtWithBrandNewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Product Offers Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProductOffersTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Yepy",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.yepyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Device Information",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deviceInformationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Safe E-Commerce",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.safeECommerceScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Safe E-Commerce Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.safeECommerceTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Delivery / Billing Address",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myDeliveryBillingAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Opening a New Account",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.openingANewAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "After Opening an Account",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.afterOpeningAnAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Shopping Centre",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.shoppingCentreScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Real Estate Office",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myRealEstateOfficeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Gallery",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myGalleryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Safe E-Commerce Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.safeECommerceThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "What Will I Ship",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whatWillIShipScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Approval From Buyer",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.approvalFromBuyerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Return Procedure",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.returnProcedureScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Completed",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.completedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Distance Selling Contracts",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.distanceSellingContractsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Product On Sales",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProductOnSalesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Returned Items",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.returnedItemsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Product Not On Sales",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myProductNotOnSalesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Successful Sales",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.successfulSalesScreen),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
