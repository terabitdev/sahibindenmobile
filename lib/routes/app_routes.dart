import 'package:flutter/material.dart';
import '../presentation/about_screen/about_screen.dart';
// import '../presentation/account_activities_screen/account_activities_screen.dart';
import '../presentation/account_agreement_screen/account_agreement_screen.dart';
import '../presentation/account_cancellation_screen/account_cancellation_screen.dart';
import '../presentation/account_holder_blocked_screen/account_holder_blocked_screen.dart';
import '../presentation/account_transcation_screen/account_transcation_screen.dart';
import '../presentation/ad_management_not_on_air_screen/ad_management_not_on_air_screen.dart';
import '../presentation/ad_management_on_air_screen/ad_management_on_air_screen.dart';
import '../presentation/ad_management_summary_screen/ad_management_summary_screen.dart';
import '../presentation/after_opening_an_account_screen/after_opening_an_account_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/approval_from_buyer_one_screen/approval_from_buyer_one_screen.dart';
// import '../presentation/approval_from_buyer_screen/approval_from_buyer_screen.dart';
// import '../presentation/auto_expertise_one_screen/auto_expertise_one_screen.dart';
import '../presentation/auto_expertise_screen/auto_expertise_screen.dart';
// import '../presentation/auto_expertise_two_screen/auto_expertise_two_screen.dart';
// import '../presentation/category_selection_one_screen/category_selection_one_screen.dart';
import '../presentation/category_selection_screen/category_selection_screen.dart';
// import '../presentation/category_selection_two_screen/category_selection_two_screen.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/comment_management_one_screen/comment_management_one_screen.dart';
import '../presentation/comment_management_screen/comment_management_screen.dart';
import '../presentation/communication_screen/communication_screen.dart';
// import '../presentation/comparison_list_screen/comparison_list_screen.dart';
import '../presentation/completed_orders_screen/completed_orders_screen.dart';
// import '../presentation/completed_screen/completed_screen.dart';
import '../presentation/contracts_screen/contracts_screen.dart';
// import '../presentation/cookie_management_screen/cookie_management_screen.dart';
import '../presentation/cookies_screen/cookies_screen.dart';
import '../presentation/corporate_account_screen/corporate_account_screen.dart';
// import '../presentation/credit_one_screen/credit_one_screen.dart';
import '../presentation/credit_screen/credit_screen.dart';
// import '../presentation/credit_two_screen/credit_two_screen.dart';
import '../presentation/delete_account_screen/delete_account_screen.dart';
import '../presentation/device_information_screen/device_information_screen.dart';
// import '../presentation/distance_contracts_one_screen/distance_contracts_one_screen.dart';
// import '../presentation/distance_contracts_screen/distance_contracts_screen.dart';
import '../presentation/distance_selling_contracts_screen/distance_selling_contracts_screen.dart';
// import '../presentation/email_screen/email_screen.dart';
// import '../presentation/help_guide_one_screen/help_guide_one_screen.dart';
// import '../presentation/help_guide_screen/help_guide_screen.dart';
// import '../presentation/help_guide_three_screen/help_guide_three_screen.dart';
// import '../presentation/help_guide_two_screen/help_guide_two_screen.dart';
// import '../presentation/home_one_screen/home_one_screen.dart';
// import '../presentation/home_rental_guide_after_lease_screen/home_rental_guide_after_lease_screen.dart';
// import '../presentation/home_screen/home_screen.dart';
// import '../presentation/house_rental_guide_10_step_home_screen/house_rental_guide_10_step_home_screen.dart';
// import '../presentation/house_rental_guide_after_lease_screen/house_rental_guide_after_lease_screen.dart';
// import '../presentation/house_rental_guide_before_renting_screen/house_rental_guide_before_renting_screen.dart';
// import '../presentation/house_rental_guide_screen/house_rental_guide_screen.dart';
// import '../presentation/individual_account_agreement_screen/individual_account_agreement_screen.dart';
// import '../presentation/information_portal_screen/information_portal_screen.dart';
// import '../presentation/information_screen/information_screen.dart';
// import '../presentation/login_screen/login_screen.dart';
// import '../presentation/maintenance_repair_one_screen/maintenance_repair_one_screen.dart';
// import '../presentation/maintenance_repair_screen/maintenance_repair_screen.dart';
// import '../presentation/message_read_information_one_screen/message_read_information_one_screen.dart';
// import '../presentation/message_read_information_screen/message_read_information_screen.dart';
// import '../presentation/messages_one_screen/messages_one_screen.dart';
// import '../presentation/messages_screen/messages_screen.dart';
// import '../presentation/mobile_phone_screen/mobile_phone_screen.dart';
// import '../presentation/my_account_information_screen/my_account_information_screen.dart';
// import '../presentation/my_bank_information_four_screen/my_bank_information_four_screen.dart';
// import '../presentation/my_bank_information_one_screen/my_bank_information_one_screen.dart';
// import '../presentation/my_bank_information_screen/my_bank_information_screen.dart';
// import '../presentation/my_bank_information_three_screen/my_bank_information_three_screen.dart';
// import '../presentation/my_bank_information_two_screen/my_bank_information_two_screen.dart';
// import '../presentation/my_brand_new_transactions_screen/my_brand_new_transactions_screen.dart';
// import '../presentation/my_current_orders_screen/my_current_orders_screen.dart';
// import '../presentation/my_delivery_billing_address_five_screen/my_delivery_billing_address_five_screen.dart';
// import '../presentation/my_delivery_billing_address_four_screen/my_delivery_billing_address_four_screen.dart';
// import '../presentation/my_delivery_billing_address_one_screen/my_delivery_billing_address_one_screen.dart';
// import '../presentation/my_delivery_billing_address_screen/my_delivery_billing_address_screen.dart';
// import '../presentation/my_delivery_billing_address_three_screen/my_delivery_billing_address_three_screen.dart';
// import '../presentation/my_delivery_billing_address_two_screen/my_delivery_billing_address_two_screen.dart';
// import '../presentation/my_gallery_screen/my_gallery_screen.dart';
// import '../presentation/my_head_office_address_one_screen/my_head_office_address_one_screen.dart';
// import '../presentation/my_head_office_address_screen/my_head_office_address_screen.dart';
// import '../presentation/my_head_office_address_two_screen/my_head_office_address_two_screen.dart';
// import '../presentation/my_permissions_screen/my_permissions_screen.dart';
// import '../presentation/my_product_not_on_sales_screen/my_product_not_on_sales_screen.dart';
// import '../presentation/my_product_offers_screen/my_product_offers_screen.dart';
// import '../presentation/my_product_offers_two_screen/my_product_offers_two_screen.dart';
// import '../presentation/my_product_on_sales_screen/my_product_on_sales_screen.dart';
// import '../presentation/my_products_that_are_not_on_sale_screen/my_products_that_are_not_on_sale_screen.dart';
// import '../presentation/my_purchase_transaction_one_screen/my_purchase_transaction_one_screen.dart';
// import '../presentation/my_purchase_transaction_screen/my_purchase_transaction_screen.dart';
// import '../presentation/my_real_estate_office_screen/my_real_estate_office_screen.dart';
// import '../presentation/my_sales_transaction_one_screen/my_sales_transaction_one_screen.dart';
// import '../presentation/my_sales_transaction_screen/my_sales_transaction_screen.dart';
// import '../presentation/notifications_screen/notifications_screen.dart';
// import '../presentation/opening_a_new_account_screen/opening_a_new_account_screen.dart';
// import '../presentation/oto360_one_screen/oto360_one_screen.dart';
// import '../presentation/oto360_screen/oto360_screen.dart';
// import '../presentation/oto360_three_screen/oto360_three_screen.dart';
// import '../presentation/oto360_two_screen/oto360_two_screen.dart';
// import '../presentation/past_queries_screen/past_queries_screen.dart';
// import '../presentation/personal_information_one_screen/personal_information_one_screen.dart';
// import '../presentation/personal_information_screen/personal_information_screen.dart';
// import '../presentation/personal_information_two_screen/personal_information_two_screen.dart';
// import '../presentation/problem_suggestion_post_screen/problem_suggestion_post_screen.dart';
// import '../presentation/product_details_screen/product_details_screen.dart';
// import '../presentation/products_i_purchased_screen/products_i_purchased_screen.dart';
// import '../presentation/products_i_sell_screen/products_i_sell_screen.dart';
// import '../presentation/products_on_sale_screen/products_on_sale_screen.dart';
// import '../presentation/property_buying_guide_after_purchase_one_screen/property_buying_guide_after_purchase_one_screen.dart';
// import '../presentation/property_buying_guide_after_purchase_screen/property_buying_guide_after_purchase_screen.dart';
// import '../presentation/property_buying_guide_auto_dictionary_one_screen/property_buying_guide_auto_dictionary_one_screen.dart';
// import '../presentation/property_buying_guide_auto_dictionary_screen/property_buying_guide_auto_dictionary_screen.dart';
// import '../presentation/property_buying_guide_auto_dictionary_two_screen/property_buying_guide_auto_dictionary_two_screen.dart';
// import '../presentation/property_buying_guide_before_purchase_screen/property_buying_guide_before_purchase_screen.dart';
// import '../presentation/property_buying_guide_during_purchase_screen/property_buying_guide_during_purchase_screen.dart';
// import '../presentation/property_buying_guide_home_buying_screen/property_buying_guide_home_buying_screen.dart';
// import '../presentation/property_buying_guide_screen/property_buying_guide_screen.dart';
// import '../presentation/protection_of_personal_data_screen/protection_of_personal_data_screen.dart';
// import '../presentation/published_advertisements_expert_screen/published_advertisements_expert_screen.dart';
// import '../presentation/published_advertisements_transactions_screen/published_advertisements_transactions_screen.dart';
// import '../presentation/q_my_money_is_safe_screen/q_my_money_is_safe_screen.dart';
// import '../presentation/real_estate_360_real_estate_expertise_screen/real_estate_360_real_estate_expertise_screen.dart';
// import '../presentation/real_estate_360_real_estate_index_one_screen/real_estate_360_real_estate_index_one_screen.dart';
// import '../presentation/real_estate_360_real_estate_index_screen/real_estate_360_real_estate_index_screen.dart';
// import '../presentation/real_estate_360_real_estate_index_two_screen/real_estate_360_real_estate_index_two_screen.dart';
// import '../presentation/real_estate_360_screen/real_estate_360_screen.dart';
// import '../presentation/recovery_email_screen/recovery_email_screen.dart';
// import '../presentation/return_cancellation_one_screen/return_cancellation_one_screen.dart';
// import '../presentation/return_cancellation_screen/return_cancellation_screen.dart';
// import '../presentation/return_procedure_screen/return_procedure_screen.dart';
// import '../presentation/returned_items_screen/returned_items_screen.dart';
// import '../presentation/rules_and_policies_screen/rules_and_policies_screen.dart';
// import '../presentation/safe_e_commerce_screen/safe_e_commerce_screen.dart';
// import '../presentation/safe_e_commerce_three_screen/safe_e_commerce_three_screen.dart';
// import '../presentation/safe_e_commerce_two_screen/safe_e_commerce_two_screen.dart';
// import '../presentation/safe_shopping_tips_screen/safe_shopping_tips_screen.dart';
// import '../presentation/sales_guide_10_step_sales_guide_screen/sales_guide_10_step_sales_guide_screen.dart';
// import '../presentation/sales_guide_during_sales_screen/sales_guide_during_sales_screen.dart';
// import '../presentation/sales_guide_pre_sales_one_screen/sales_guide_pre_sales_one_screen.dart';
// import '../presentation/sales_guide_pre_sales_screen/sales_guide_pre_sales_screen.dart';
// import '../presentation/sales_guide_screen/sales_guide_screen.dart';
// import '../presentation/saved_cards_screen/saved_cards_screen.dart';
// import '../presentation/search_one_screen/search_one_screen.dart';
// import '../presentation/search_screen/search_screen.dart';
// import '../presentation/services_one_screen/services_one_screen.dart';
// import '../presentation/services_screen/services_screen.dart';
// import '../presentation/session_devices_screen/session_devices_screen.dart';
// import '../presentation/shopping_centre_screen/shopping_centre_screen.dart';
// import '../presentation/sign_up_screen/sign_up_screen.dart';
// import '../presentation/step_verification_screen/step_verification_screen.dart';
// import '../presentation/successful_sales_one_screen/successful_sales_one_screen.dart';
// import '../presentation/successful_sales_screen/successful_sales_screen.dart';
// import '../presentation/summary_screen/summary_screen.dart';
// import '../presentation/terms_of_use_one_screen/terms_of_use_one_screen.dart';
// import '../presentation/terms_of_use_screen/terms_of_use_screen.dart';
// import '../presentation/test_user_five_screen/test_user_five_screen.dart';
// import '../presentation/test_user_four_screen/test_user_four_screen.dart';
// import '../presentation/test_user_one_screen/test_user_one_screen.dart';
// import '../presentation/test_user_screen/test_user_screen.dart';
// import '../presentation/test_user_three_screen/test_user_three_screen.dart';
// import '../presentation/test_user_two_screen/test_user_two_screen.dart';
// import '../presentation/vehicle_buying_guide_after_purchase_one_screen/vehicle_buying_guide_after_purchase_one_screen.dart';
// import '../presentation/vehicle_buying_guide_after_purchase_screen/vehicle_buying_guide_after_purchase_screen.dart';
// import '../presentation/vehicle_buying_guide_after_purchase_two_screen/vehicle_buying_guide_after_purchase_two_screen.dart';
// import '../presentation/vehicle_buying_guide_auto_dictionary_screen/vehicle_buying_guide_auto_dictionary_screen.dart';
// import '../presentation/vehicle_buying_guide_before_purchase_screen/vehicle_buying_guide_before_purchase_screen.dart';
// import '../presentation/vehicle_buying_guide_during_purchase_screen/vehicle_buying_guide_during_purchase_screen.dart';
// import '../presentation/vehicle_buying_guide_screen/vehicle_buying_guide_screen.dart';
// import '../presentation/vehicle_damage_inquiry_screen/vehicle_damage_inquiry_screen.dart';
// import '../presentation/vehicle_purchasing_guide_in_eleven_screen/vehicle_purchasing_guide_in_eleven_screen.dart';
// import '../presentation/vehicle_sales_guide_auto_dictionary_screen/vehicle_sales_guide_auto_dictionary_screen.dart';
// import '../presentation/vehicle_sales_guide_during_sale_screen/vehicle_sales_guide_during_sale_screen.dart';
// import '../presentation/vehicle_sales_guide_in_7_steps_screen/vehicle_sales_guide_in_7_steps_screen.dart';
// import '../presentation/vehicle_sales_guide_pre_sale_screen/vehicle_sales_guide_pre_sale_screen.dart';
// import '../presentation/vehicle_selling_guide_screen/vehicle_selling_guide_screen.dart';
// import '../presentation/vehicle_valuation_five_screen/vehicle_valuation_five_screen.dart';
// import '../presentation/vehicle_valuation_four_screen/vehicle_valuation_four_screen.dart';
// import '../presentation/vehicle_valuation_one_screen/vehicle_valuation_one_screen.dart';
// import '../presentation/vehicle_valuation_screen/vehicle_valuation_screen.dart';
// import '../presentation/vehicle_valuation_three_screen/vehicle_valuation_three_screen.dart';
// import '../presentation/vehicle_valuation_two_screen/vehicle_valuation_two_screen.dart';
// import '../presentation/verification_one_screen/verification_one_screen.dart';
// import '../presentation/verification_screen/verification_screen.dart';
// import '../presentation/what_i_bought_with_brand_new_screen/what_i_bought_with_brand_new_screen.dart';
// import '../presentation/what_i_got_with_yepy_screen/what_i_got_with_yepy_screen.dart';
// import '../presentation/what_i_sold_with_yepy_screen/what_i_sold_with_yepy_screen.dart';
// import '../presentation/what_will_i_ship_one_screen/what_will_i_ship_one_screen.dart';
// import '../presentation/what_will_i_ship_screen/what_will_i_ship_screen.dart';
// import '../presentation/while_buying_screen/while_buying_screen.dart';
// import '../presentation/while_buying_vehicle_comparison_screen/while_buying_vehicle_comparison_screen.dart';
// import '../presentation/while_renting_screen/while_renting_screen.dart';
// import '../presentation/while_selling_screen/while_selling_screen.dart';
// import '../presentation/yepy_screen/yepy_screen.dart';
// import '../presentation/zero_vehicle_world_authorized_one_screen/zero_vehicle_world_authorized_one_screen.dart';
// import '../presentation/zero_vehicle_world_authorized_screen/zero_vehicle_world_authorized_screen.dart';
// import '../presentation/zero_vehicle_world_campaign_vehicles_screen/zero_vehicle_world_campaign_vehicles_screen.dart';
// import '../presentation/zero_vehicle_world_screen/zero_vehicle_world_screen.dart';
// import '../presentation/zero_vehicle_world_vehicle_comparison_screen/zero_vehicle_world_vehicle_comparison_screen.dart';
// import '../presentation/zero_vehicle_world_zero_vehicle_screen/zero_vehicle_world_zero_vehicle_screen.dart';

class AppRoutes {
  static const String maintenanceRepairScreen = '/maintenance_repair_screen';

  static const String creditScreen = '/credit_screen';

  static const String creditconsumerTabPage = '/creditconsumer_tab_page';

  static const String whileBuyingVehicleComparisonScreen =
      '/while_buying_vehicle_comparison_screen';

  static const String vehicleValuationScreen = '/vehicle_valuation_screen';

  static const String vehicleValuationOneScreen =
      '/vehicle_valuation_one_screen';

  static const String vehicleValuationTwoScreen =
      '/vehicle_valuation_two_screen';

  static const String vehicleDamageInquiryScreen =
      '/vehicle_damage_inquiry_screen';

  static const String vehicledamageTabPage = '/vehicledamage_tab_page';

  static const String pastQueriesScreen = '/past_queries_screen';

  static const String autoExpertiseScreen = '/auto_expertise_screen';

  static const String vehicleBuyingGuideScreen = '/vehicle_buying_guide_screen';

  static const String vehiclePurchasingGuideInElevenScreen =
      '/vehicle_purchasing_guide_in_eleven_screen';

  static const String vehicleBuyingGuideBeforePurchaseScreen =
      '/vehicle_buying_guide_before_purchase_screen';

  static const String vehicleBuyingGuideDuringPurchaseScreen =
      '/vehicle_buying_guide_during_purchase_screen';

  static const String vehicleBuyingGuideAfterPurchaseScreen =
      '/vehicle_buying_guide_after_purchase_screen';

  static const String vehicleBuyingGuideAfterPurchaseOneScreen =
      '/vehicle_buying_guide_after_purchase_one_screen';

  static const String vehicleBuyingGuideAutoDictionaryScreen =
      '/vehicle_buying_guide_auto_dictionary_screen';

  static const String vehicleValuationThreeScreen =
      '/vehicle_valuation_three_screen';

  static const String vehicleValuationFourScreen =
      '/vehicle_valuation_four_screen';

  static const String vehicleValuationFiveScreen =
      '/vehicle_valuation_five_screen';

  static const String autoExpertiseOneScreen = '/auto_expertise_one_screen';

  static const String vehicleSellingGuideScreen =
      '/vehicle_selling_guide_screen';

  static const String vehicleSalesGuideIn7StepsScreen =
      '/vehicle_sales_guide_in_7_steps_screen';

  static const String vehicleSalesGuidePreSaleScreen =
      '/vehicle_sales_guide_pre_sale_screen';

  static const String vehicleSalesGuideDuringSaleScreen =
      '/vehicle_sales_guide_during_sale_screen';

  static const String vehicleSalesGuideAutoDictionaryScreen =
      '/vehicle_sales_guide_auto_dictionary_screen';

  static const String vehicleBuyingGuideAfterPurchaseTwoScreen =
      '/vehicle_buying_guide_after_purchase_two_screen';

  static const String zeroVehicleWorldScreen = '/zero_vehicle_world_screen';

  static const String zeroVehicleWorldVehicleComparisonScreen =
      '/zero_vehicle_world_vehicle_comparison_screen';

  static const String zeroVehicleWorldZeroVehicleScreen =
      '/zero_vehicle_world_zero_vehicle_screen';

  static const String zerovehicleTabPage = '/zerovehicle_tab_page';

  static const String zeroVehicleWorldCampaignVehiclesScreen =
      '/zero_vehicle_world_campaign_vehicles_screen';

  static const String zeroVehicleWorldAuthorizedScreen =
      '/zero_vehicle_world_authorized_screen';

  static const String zeroVehicleWorldAuthorizedOneScreen =
      '/zero_vehicle_world_authorized_one_screen';

  static const String servicesScreen = '/services_screen';

  static const String realEstate360Screen = '/real_estate_360_screen';

  static const String whileBuyingScreen = '/while_buying_screen';

  static const String realEstate360RealEstateExpertiseScreen =
      '/real_estate_360_real_estate_expertise_screen';

  static const String propertyBuyingGuideScreen =
      '/property_buying_guide_screen';

  static const String propertyBuyingGuideHomeBuyingScreen =
      '/property_buying_guide_home_buying_screen';

  static const String propertyBuyingGuideAutoDictionaryScreen =
      '/property_buying_guide_auto_dictionary_screen';

  static const String propertyBuyingGuideBeforePurchaseScreen =
      '/property_buying_guide_before_purchase_screen';

  static const String propertyBuyingGuideDuringPurchaseScreen =
      '/property_buying_guide_during_purchase_screen';

  static const String propertyBuyingGuideAfterPurchaseScreen =
      '/property_buying_guide_after_purchase_screen';

  static const String propertyBuyingGuideAfterPurchaseOneScreen =
      '/property_buying_guide_after_purchase_one_screen';

  static const String realEstate360RealEstateIndexScreen =
      '/real_estate_360_real_estate_index_screen';

  static const String realestateTwoTabPage = '/realestate_two_tab_page';

  static const String personalInformationScreen =
      '/personal_information_screen';

  static const String personalInformationOneScreen =
      '/personal_information_one_screen';

  static const String emailScreen = '/email_screen';

  static const String mobilePhoneScreen = '/mobile_phone_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String accountCancellationScreen =
      '/account_cancellation_screen';

  static const String stepVerificationScreen = '/step_verification_screen';

  static const String myDeliveryBillingAddressOneScreen =
      '/my_delivery_billing_address_one_screen';

  static const String myDeliveryBillingAddressTwoScreen =
      '/my_delivery_billing_address_two_screen';

  static const String myBankInformationScreen = '/my_bank_information_screen';

  static const String myBankInformationOneScreen =
      '/my_bank_information_one_screen';

  static const String myHeadOfficeAddressScreen =
      '/my_head_office_address_screen';

  static const String myPurchaseTransactionScreen =
      '/my_purchase_transaction_screen';

  static const String mySalesTransactionScreen = '/my_sales_transaction_screen';

  static const String whatIGotWithYepyScreen = '/what_i_got_with_yepy_screen';

  static const String adManagementSummaryScreen =
      '/ad_management_summary_screen';

  static const String creditOneScreen = '/credit_one_screen';

  static const String creditTwoTabPage = '/credit_two_tab_page';

  static const String creditTwoScreen = '/credit_two_screen';

  static const String credittwohomeTabPage = '/credittwohome_tab_page';

  static const String whileRentingScreen = '/while_renting_screen';

  static const String whileSellingScreen = '/while_selling_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String servicesOneScreen = '/services_one_screen';

  static const String oto360Screen = '/oto360_screen';

  static const String oto360OneScreen = '/oto360_one_screen';

  static const String recoveryEmailScreen = '/recovery_email_screen';

  static const String sessionDevicesScreen = '/session_devices_screen';

  static const String accountActivitiesScreen = '/account_activities_screen';

  static const String accountHolderBlockedScreen =
      '/account_holder_blocked_screen';

  static const String oto360TwoScreen = '/oto360_two_screen';

  static const String oto360ThreeScreen = '/oto360_three_screen';

  static const String maintenanceRepairOneScreen =
      '/maintenance_repair_one_screen';

  static const String whatISoldWithYepyScreen = '/what_i_sold_with_yepy_screen';

  static const String summaryScreen = '/summary_screen';

  static const String myCurrentOrdersScreen = '/my_current_orders_screen';

  static const String returnCancellationScreen = '/return_cancellation_screen';

  static const String completedOrdersScreen = '/completed_orders_screen';

  static const String distanceContractsScreen = '/distance_contracts_screen';

  static const String productsOnSaleScreen = '/products_on_sale_screen';

  static const String whatWillIShipOneScreen = '/what_will_i_ship_one_screen';

  static const String houseRentalGuideScreen = '/house_rental_guide_screen';

  static const String realEstate360RealEstateIndexOneScreen =
      '/real_estate_360_real_estate_index_one_screen';

  static const String realestateTwoTab1Page = '/realestate_two_tab1_page';

  static const String houseRentalGuide10StepHomeScreen =
      '/house_rental_guide_10_step_home_screen';

  static const String houseRentalGuideBeforeRentingScreen =
      '/house_rental_guide_before_renting_screen';

  static const String houseRentalGuideAfterLeaseScreen =
      '/house_rental_guide_after_lease_screen';

  static const String homeRentalGuideAfterLeaseScreen =
      '/home_rental_guide_after_lease_screen';

  static const String realEstate360RealEstateIndexTwoScreen =
      '/real_estate_360_real_estate_index_two_screen';

  static const String realestateTwoTab2Page = '/realestate_two_tab2_page';

  static const String salesGuideScreen = '/sales_guide_screen';

  static const String salesGuide10StepSalesGuideScreen =
      '/sales_guide_10_step_sales_guide_screen';

  static const String salesGuidePreSalesScreen =
      '/sales_guide_pre_sales_screen';

  static const String salesGuideDuringSalesScreen =
      '/sales_guide_during_sales_screen';

  static const String salesGuidePreSalesOneScreen =
      '/sales_guide_pre_sales_one_screen';

  static const String approvalFromBuyerOneScreen =
      '/approval_from_buyer_one_screen';

  static const String returnCancellationOneScreen =
      '/return_cancellation_one_screen';

  static const String successfulSalesOneScreen = '/successful_sales_one_screen';

  static const String myProductsThatAreNotOnSaleScreen =
      '/my_products_that_are_not_on_sale_screen';

  static const String myBankInformationTwoScreen =
      '/my_bank_information_two_screen';

  static const String myHeadOfficeAddressOneScreen =
      '/my_head_office_address_one_screen';

  static const String distanceContractsOneScreen =
      '/distance_contracts_one_screen';

  static const String homeScreen = '/home_screen';

  static const String scrollviewOneTabPage = '/scrollview_one_tab_page';

  static const String homeInitialPage = '/home_initial_page';

  static const String categorySelectionScreen = '/category_selection_screen';

  static const String categorySelectionOneScreen =
      '/category_selection_one_screen';

  static const String categorySelectionTwoScreen =
      '/category_selection_two_screen';

  static const String searchScreen = '/search_screen';

  static const String autoExpertiseTwoScreen = '/auto_expertise_two_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String productDetailsScreen = '/product_details_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String scrollviewTabPage = '/scrollview_tab_page';

  static const String propertyBuyingGuideAutoDictionaryOneScreen =
      '/property_buying_guide_auto_dictionary_one_screen';

  static const String propertyBuyingGuideAutoDictionaryTwoScreen =
      '/property_buying_guide_auto_dictionary_two_screen';

  static const String myDeliveryBillingAddressThreeScreen =
      '/my_delivery_billing_address_three_screen';

  static const String myDeliveryBillingAddressFourScreen =
      '/my_delivery_billing_address_four_screen';

  static const String commentManagementOneScreen =
      '/comment_management_one_screen';

  static const String messagesScreen = '/messages_screen';

  static const String scrollviewTab1Page = '/scrollview_tab1_page';

  static const String publishedAdvertisementsTransactionsScreen =
      '/published_advertisements_transactions_screen';

  static const String publishedAdvertisementsExpertScreen =
      '/published_advertisements_expert_screen';

  static const String testUserScreen = '/test_user_screen';

  static const String adManagementOnAirScreen = '/ad_management_on_air_screen';

  static const String adManagementNotOnAirScreen =
      '/ad_management_not_on_air_screen';

  static const String testUserOneScreen = '/test_user_one_screen';

  static const String messagesOneScreen = '/messages_one_screen';

  static const String messagesTwoTabPage = '/messages_two_tab_page';

  static const String getMessagesPage = '/get_messages_page';

  static const String myMobileNotificationPermissionsPage =
      '/my_mobile_notification_permissions_page';

  static const String messageReadInformationTwoPage =
      '/message_read_information_two_page';

  static const String informationScreen = '/information_screen';

  static const String informationinfoTabPage = '/informationinfo_tab_page';

  static const String testUserTwoScreen = '/test_user_two_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String scrollviewOneTab1Page = '/scrollview_one_tab1_page';

  static const String comparisonListScreen = '/comparison_list_screen';

  static const String testUserThreeScreen = '/test_user_three_screen';

  static const String qMyMoneyIsSafeScreen = '/q_my_money_is_safe_screen';

  static const String myPurchaseTransactionOneScreen =
      '/my_purchase_transaction_one_screen';

  static const String mySalesTransactionOneScreen =
      '/my_sales_transaction_one_screen';

  static const String myDeliveryBillingAddressFiveScreen =
      '/my_delivery_billing_address_five_screen';

  static const String myBankInformationThreeScreen =
      '/my_bank_information_three_screen';

  static const String myBankInformationFourScreen =
      '/my_bank_information_four_screen';

  static const String myHeadOfficeAddressTwoScreen =
      '/my_head_office_address_two_screen';

  static const String testUserFourScreen = '/test_user_four_screen';

  static const String myAccountInformationScreen =
      '/my_account_information_screen';

  static const String personalInformationTwoScreen =
      '/personal_information_two_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String savedCardsScreen = '/saved_cards_screen';

  static const String testUserFiveScreen = '/test_user_five_screen';

  static const String helpGuideTwoScreen = '/help_guide_two_screen';

  static const String helpGuideThreeScreen = '/help_guide_three_screen';

  static const String helpGuideScreen = '/help_guide_screen';

  static const String helpGuideOneScreen = '/help_guide_one_screen';

  static const String problemSuggestionPostScreen =
      '/problem_suggestion_post_screen';

  static const String aboutScreen = '/about_screen';

  static const String cookiesScreen = '/cookies_screen';

  static const String commentManagementScreen = '/comment_management_screen';

  static const String productsIPurchasedScreen = '/products_i_purchased_screen';

  static const String productsISellScreen = '/products_i_sell_screen';

  static const String myBrandNewTransactionsScreen =
      '/my_brand_new_transactions_screen';

  static const String myPermissionsScreen = '/my_permissions_screen';

  static const String messageReadInformationScreen =
      '/message_read_information_screen';

  static const String messageReadInformationOneScreen =
      '/message_read_information_one_screen';

  static const String communicationScreen = '/communication_screen';

  static const String safeShoppingTipsScreen = '/safe_shopping_tips_screen';

  static const String termsOfUseScreen = '/terms_of_use_screen';

  static const String termsOfUseOneScreen = '/terms_of_use_one_screen';

  static const String accountAgreementScreen = '/account_agreement_screen';

  static const String individualAccountAgreementScreen =
      '/individual_account_agreement_screen';

  static const String protectionOfPersonalDataScreen =
      '/protection_of_personal_data_screen';

  static const String contractsScreen = '/contracts_screen';

  static const String rulesAndPoliciesScreen = '/rules_and_policies_screen';

  static const String cookieManagementScreen = '/cookie_management_screen';

  static const String myProductOffersScreen = '/my_product_offers_screen';

  static const String myproductTwoTabPage = '/myproduct_two_tab_page';

  static const String myProductOffersOnePage = '/my_product_offers_one_page';

  static const String accountTranscationScreen = '/account_transcation_screen';

  static const String informationPortalScreen = '/information_portal_screen';

  static const String corporateAccountScreen = '/corporate_account_screen';

  static const String whatIBoughtWithBrandNewScreen =
      '/what_i_bought_with_brand_new_screen';

  static const String myProductOffersTwoScreen =
      '/my_product_offers_two_screen';

  static const String yepyScreen = '/yepy_screen';

  static const String deviceInformationScreen = '/device_information_screen';

  static const String safeECommerceScreen = '/safe_e_commerce_screen';

  static const String safeTabPage = '/safe_tab_page';

  static const String safeECommerceOnePage = '/safe_e_commerce_one_page';

  static const String safeECommerceTwoScreen = '/safe_e_commerce_two_screen';

  static const String myDeliveryBillingAddressScreen =
      '/my_delivery_billing_address_screen';

  static const String openingANewAccountScreen =
      '/opening_a_new_account_screen';

  static const String afterOpeningAnAccountScreen =
      '/after_opening_an_account_screen';

  static const String shoppingCentreScreen = '/shopping_centre_screen';

  static const String myRealEstateOfficeScreen =
      '/my_real_estate_office_screen';

  static const String myGalleryScreen = '/my_gallery_screen';

  static const String safeECommerceThreeScreen =
      '/safe_e_commerce_three_screen';

  static const String whatWillIShipScreen = '/what_will_i_ship_screen';

  static const String approvalFromBuyerScreen = '/approval_from_buyer_screen';

  static const String returnProcedureScreen = '/return_procedure_screen';

  static const String completedScreen = '/completed_screen';

  static const String distanceSellingContractsScreen =
      '/distance_selling_contracts_screen';

  static const String myProductOnSalesScreen = '/my_product_on_sales_screen';

  static const String returnedItemsScreen = '/returned_items_screen';

  static const String successfulSalesScreen = '/successful_sales_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  // static const String initialRoute = '/initialRoute';
  static const String initialRoute = '/about_screen';

  static Map<String, WidgetBuilder> get routes => {
    // maintenanceRepairScreen: MaintenanceRepairScreen.builder,
    creditScreen: CreditScreen.builder,
    // whileBuyingVehicleComparisonScreen:
    // WhileBuyingVehicleComparisonScreen.builder,
    // vehicleValuationScreen: VehicleValuationScreen.builder,
    // vehicleValuationOneScreen: VehicleValuationOneScreen.builder,
    // vehicleValuationTwoScreen: VehicleValuationTwoScreen.builder,
    // vehicleDamageInquiryScreen: VehicleDamageInquiryScreen.builder,
    // pastQueriesScreen: PastQueriesScreen.builder,
    autoExpertiseScreen: AutoExpertiseScreen.builder,
    // vehicleBuyingGuideScreen: VehicleBuyingGuideScreen.builder,
    // vehiclePurchasingGuideInElevenScreen:
    // VehiclePurchasingGuideInElevenScreen.builder,
    // vehicleBuyingGuideBeforePurchaseScreen:
    // VehicleBuyingGuideBeforePurchaseScreen.builder,
    // vehicleBuyingGuideDuringPurchaseScreen:
    // VehicleBuyingGuideDuringPurchaseScreen.builder,
    // vehicleBuyingGuideAfterPurchaseScreen:
    // VehicleBuyingGuideAfterPurchaseScreen.builder,
    // vehicleBuyingGuideAfterPurchaseOneScreen:
    // VehicleBuyingGuideAfterPurchaseOneScreen.builder,
    // vehicleBuyingGuideAutoDictionaryScreen:
    // VehicleBuyingGuideAutoDictionaryScreen.builder,
    // vehicleValuationThreeScreen: VehicleValuationThreeScreen.builder,
    // vehicleValuationFourScreen: VehicleValuationFourScreen.builder,
    // vehicleValuationFiveScreen: VehicleValuationFiveScreen.builder,
    // autoExpertiseOneScreen: AutoExpertiseOneScreen.builder,
    // vehicleSellingGuideScreen: VehicleSellingGuideScreen.builder,
    // vehicleSalesGuideIn7StepsScreen:
    // VehicleSalesGuideIn7StepsScreen.builder,
    // vehicleSalesGuidePreSaleScreen: VehicleSalesGuidePreSaleScreen.builder,
    // vehicleSalesGuideDuringSaleScreen:
    // VehicleSalesGuideDuringSaleScreen.builder,
    // vehicleSalesGuideAutoDictionaryScreen:
    // VehicleSalesGuideAutoDictionaryScreen.builder,
    // vehicleBuyingGuideAfterPurchaseTwoScreen:
    // VehicleBuyingGuideAfterPurchaseTwoScreen.builder,
    // zeroVehicleWorldScreen: ZeroVehicleWorldScreen.builder,
    // zeroVehicleWorldVehicleComparisonScreen:
    // ZeroVehicleWorldVehicleComparisonScreen.builder,
    // zeroVehicleWorldZeroVehicleScreen:
    // ZeroVehicleWorldZeroVehicleScreen.builder,
    // zeroVehicleWorldCampaignVehiclesScreen:
    // ZeroVehicleWorldCampaignVehiclesScreen.builder,
    // zeroVehicleWorldAuthorizedScreen:
    // ZeroVehicleWorldAuthorizedOneScreen.builder,
    // servicesScreen: ServicesScreen.builder,
    // realEstate360Screen: RealEstate360Screen.builder,
    // whileBuyingScreen: WhileBuyingScreen.builder,
    // realEstate360RealEstateExpertiseScreen:
    // RealEstate360RealEstateExpertiseScreen.builder,
    // propertyBuyingGuideScreen: PropertyBuyingGuideScreen.builder,
    // propertyBuyingGuideHomeBuyingScreen:
    // PropertyBuyingGuideHomeBuyingScreen.builder,
    // propertyBuyingGuideAutoDictionaryScreen:
    // PropertyBuyingGuideAutoDictionaryScreen.builder,
    // propertyBuyingGuideBeforePurchaseScreen:
    // PropertyBuyingGuideBeforePurchaseScreen.builder,
    // propertyBuyingGuideDuringPurchaseScreen:
    // PropertyBuyingGuideDuringPurchaseScreen.builder,
    // propertyBuyingGuideAfterPurchaseScreen:
    // PropertyBuyingGuideAfterPurchaseScreen.builder,
    // propertyBuyingGuideAfterPurchaseOneScreen:
    // PropertyBuyingGuideAfterPurchaseOneScreen.builder,
    // realEstate360RealEstateIndexScreen:
    // RealEstate360RealEstateIndexScreen.builder,
    // personalInformationScreen: PersonalInformationScreen.builder,
    // personalInformationOneScreen: PersonalInformationOneScreen.builder,
    // emailScreen: EmailScreen.builder,
    // mobilePhoneScreen: MobilePhoneScreen.builder,
    changePasswordScreen: ChangePasswordScreen.builder,
    // myDeliveryBillingAddressOneScreen:
    // MyDeliveryBillingAddressOneScreen.builder,
    // myDeliveryBillingAddressTwoScreen:
    // MyDeliveryBillingAddressTwoScreen.builder,
    // myBankInformationScreen: MyBankInformationScreen.builder,
    // myBankInformationOneScreen: MyBankInformationOneScreen.builder,
    // myHeadOfficeAddressScreen: MyHeadOfficeAddressScreen.builder,
    // myPurchaseTransactionScreen: MyPurchaseTransactionScreen.builder,
    // mySalesTransactionScreen: MySalesTransactionScreen.builder,
    // whatIGotWithYepyScreen: WhatIGotWithYepyScreen.builder,
    adManagementSummaryScreen: AdManagementSummaryScreen.builder,
    // creditOneScreen: CreditOneScreen.builder,
    // creditTwoScreen: CreditTwoScreen.builder,
    // whileRentingScreen: WhileRentingScreen.builder,
    // whileSellingScreen: WhileSellingScreen.builder,
    // loginScreen: LoginScreen.builder,
    // signUpScreen: SignUpScreen.builder,
    // servicesOneScreen: ServicesOneScreen.builder,
    // oto360Screen: Oto360Screen.builder,
    // oto360OneScreen: Oto360OneScreen.builder,
    // recoveryEmailScreen: RecoveryEmailScreen.builder,
    // sessionDevicesScreen: SessionDevicesScreen.builder,
    // accountActivitiesScreen: AccountActivitiesScreen.builder,
    accountHolderBlockedScreen: AccountHolderBlockedScreen.builder,
    // oto360TwoScreen: Oto360TwoScreen.builder,
    // oto360ThreeScreen: Oto360ThreeScreen.builder,
    // myCurrentOrdersScreen: MyCurrentOrdersScreen.builder,
    // returnCancellationScreen: ReturnCancellationScreen.builder,
    // completedOrdersScreen: CompletedOrdersScreen.builder,
    // distanceContractsScreen: DistanceContractsScreen.builder,
    // productsOnSaleScreen: ProductsOnSaleScreen.builder,
    // whatWillIShipOneScreen: WhatWillIShipOneScreen.builder,
    // houseRentalGuideScreen: HouseRentalGuideScreen.builder,
    // realEstate360RealEstateIndexOneScreen:
    // RealEstate360RealEstateIndexOneScreen.builder,
    // houseRentalGuide10StepHomeScreen:
    // HouseRentalGuide10StepHomeScreen.builder,
    // houseRentalGuideBeforeRentingScreen:
    // HouseRentalGuideBeforeRentingScreen.builder,
    // houseRentalGuideAfterLeaseScreen:
    // HouseRentalGuideAfterLeaseScreen.builder,
    // homeRentalGuideAfterLeaseScreen:
    // HomeRentalGuideAfterLeaseScreen.builder,
    // realEstate360RealEstateIndexTwoScreen:
    // RealEstate360RealEstateIndexTwoScreen.builder,
    // salesGuideScreen: SalesGuideScreen.builder,
    // salesGuide10StepSalesGuideScreen:
    // SalesGuide10StepSalesGuideScreen.builder,
    // salesGuidePreSalesScreen: SalesGuidePreSalesScreen.builder,
    // salesGuideDuringSalesScreen: SalesGuideDuringSalesScreen.builder,
    // salesGuidePreSalesOneScreen: SalesGuidePreSalesOneScreen.builder,
    approvalFromBuyerOneScreen: ApprovalFromBuyerOneScreen.builder,
    // myBankInformationTwoScreen: MyBankInformationTwoScreen.builder,
    // myHeadOfficeAddressOneScreen: MyHeadOfficeAddressOneScreen.builder,
    // distanceContractsOneScreen: DistanceContractsOneScreen.builder,
    // homeScreen: HomeScreen.builder,
    // categorySelectionScreen: CategorySelectionScreen.builder,
    // categorySelectionOneScreen: CategorySelectionOneScreen.builder,
    // categorySelectionTwoScreen: CategorySelectionTwoScreen.builder,
    // searchScreen: SearchScreen.builder,
    // autoExpertiseTwoScreen: AutoExpertiseTwoScreen.builder,
    // searchOneScreen: SearchOneScreen.builder,
    // productDetailsScreen: ProductDetailsScreen.builder,
    // notificationsScreen: NotificationsScreen.builder,
    // propertyBuyingGuideAutoDictionaryOneScreen:
    // PropertyBuyingGuideAutoDictionaryOneScreen.builder,
    // propertyBuyingGuideAutoDictionaryTwoScreen:
    // PropertyBuyingGuideAutoDictionaryTwoScreen.builder,
    // myDeliveryBillingAddressThreeScreen:
    // MyDeliveryBillingAddressThreeScreen.builder,
    // myDeliveryBillingAddressFourScreen:
    // MyDeliveryBillingAddressFourScreen.builder,
    // commentManagementOneScreen: CommentManagementOneScreen.builder,
    // messagesScreen: MessagesScreen.builder,
    // publishedAdvertisementsTransactionsScreen:
    // PublishedAdvertisementsTransactionsScreen.builder,
    // publishedAdvertisementsExpertScreen:
    // PublishedAdvertisementsExpertScreen.builder,
    // informationScreen: InformationScreen.builder,
    // testUserTwoScreen: TestUserTwoScreen.builder,
    // homeOneScreen: HomeOneScreen.builder,
    // comparisonListScreen: ComparisonListScreen.builder,
    // testUserThreeScreen: TestUserThreeScreen.builder,
    // qMyMoneyIsSafeScreen: QMyMoneyIsSafeScreen.builder,
    // myPurchaseTransactionOneScreen: MyPurchaseTransactionOneScreen.builder,
    // mySalesTransactionOneScreen: MySalesTransactionOneScreen.builder,
    // myDeliveryBillingAddressFiveScreen:
    // MyDeliveryBillingAddressFiveScreen.builder,
    // myBankInformationThreeScreen: MyBankInformationThreeScreen.builder,
    // myBankInformationFourScreen: MyBankInformationFourScreen.builder,
    // myHeadOfficeAddressTwoScreen: MyHeadOfficeAddressTwoScreen.builder,
    // testUserFourScreen: TestUserFourScreen.builder,
    // myAccountInformationScreen: MyAccountInformationScreen.builder,
    // personalInformationTwoScreen: PersonalInformationTwoScreen.builder,
    // verificationOneScreen: VerificationOneScreen.builder,
    deleteAccountScreen: DeleteAccountScreen.builder,
    // savedCardsScreen: SavedCardsScreen.builder,
    // testUserFiveScreen: TestUserFiveScreen.builder,
    // helpGuideTwoScreen: HelpGuideTwoScreen.builder,
    // helpGuideThreeScreen: HelpGuideThreeScreen.builder,
    // helpGuideScreen: HelpGuideScreen.builder,
    // helpGuideOneScreen: HelpGuideOneScreen.builder,
    // problemSuggestionPostScreen: ProblemSuggestionPostScreen.builder,
    aboutScreen: AboutScreen.builder,
    // myPermissionsScreen: MyPermissionsScreen.builder,
    // messageReadInformationScreen: MessageReadInformationScreen.builder,
    // messageReadInformationOneScreen:
    // MessageReadInformationOneScreen.builder,
    communicationScreen: CommunicationScreen.builder,
    // safeShoppingTipsScreen: SafeShoppingTipsScreen.builder,
    // termsOfUseScreen: TermsOfUseScreen.builder,
    // termsOfUseOneScreen: TermsOfUseOneScreen.builder,
    accountAgreementScreen: AccountAgreementScreen.builder,
    // individualAccountAgreementScreen:
    // IndividualAccountAgreementScreen.builder,
    // protectionOfPersonalDataScreen: ProtectionOfPersonalDataScreen.builder,
    contractsScreen: ContractsScreen.builder,
    // rulesAndPoliciesScreen: RulesAndPoliciesScreen.builder,
    // cookieManagementScreen: CookieManagementScreen.builder,
    // myProductOffersScreen: MyProductOffersScreen.builder,
    accountTranscationScreen: AccountTranscationScreen.builder,
    // informationPortalScreen: InformationPortalScreen.builder,
    corporateAccountScreen: CorporateAccountScreen.builder,
    // whatIBoughtWithBrandNewScreen: WhatIBoughtWithBrandNewScreen.builder,
    // myProductOffersTwoScreen: MyProductOffersTwoScreen.builder,
    // yepyScreen: YepyScreen.builder,
    deviceInformationScreen: DeviceInformationScreen.builder,
    // safeECommerceScreen: SafeECommerceScreen.builder,
    // safeECommerceTwoScreen: SafeECommerceTwoScreen.builder,
    // myDeliveryBillingAddressScreen: MyDeliveryBillingAddressScreen.builder,
    // safeECommerceThreeScreen: SafeECommerceThreeScreen.builder,
    // whatWillIShipScreen: WhatWillIShipScreen.builder,
    // approvalFromBuyerScreen: ApprovalFromBuyerScreen.builder,
    // returnProcedureScreen: ReturnProcedureScreen.builder,
    // completedScreen: CompletedScreen.builder,
    distanceSellingContractsScreen: DistanceSellingContractsScreen.builder,
    // myProductOnSalesScreen: MyProductOnSalesScreen.builder,
    // returnedItemsScreen: ReturnedItemsScreen.builder,
    // myProductNotOnSalesScreen: MyProductNotOnSalesScreen.builder,
    // successfulSalesScreen: SuccessfulSalesScreen.builder,
    // appNavigationScreen: AppNavigationScreen.builder,
    // initialRoute: MaintenanceRepairScreen.builder
  };
}
