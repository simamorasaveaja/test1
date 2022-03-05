// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `An error has occurred: {extra}`
  String ERROR_E000(Object extra) {
    return Intl.message(
      'An error has occurred: $extra',
      name: 'ERROR_E000',
      desc: '',
      args: [extra],
    );
  }

  /// `Invalid data.`
  String get ERROR_E001 {
    return Intl.message(
      'Invalid data.',
      name: 'ERROR_E001',
      desc: '',
      args: [],
    );
  }

  /// `Can't find {extra}.`
  String ERROR_E002(Object extra) {
    return Intl.message(
      'Can\'t find $extra.',
      name: 'ERROR_E002',
      desc: '',
      args: [extra],
    );
  }

  /// `{extra} already exists.`
  String ERROR_E003(Object extra) {
    return Intl.message(
      '$extra already exists.',
      name: 'ERROR_E003',
      desc: '',
      args: [extra],
    );
  }

  /// `Missing some details.`
  String get ERROR_E004 {
    return Intl.message(
      'Missing some details.',
      name: 'ERROR_E004',
      desc: '',
      args: [],
    );
  }

  /// `Currently in use.`
  String get ERROR_E005 {
    return Intl.message(
      'Currently in use.',
      name: 'ERROR_E005',
      desc: '',
      args: [],
    );
  }

  /// `Login problem. Please contact support@bla.com.`
  String get ERROR_E110 {
    return Intl.message(
      'Login problem. Please contact support@bla.com.',
      name: 'ERROR_E110',
      desc: '',
      args: [],
    );
  }

  /// `Duplicate input.`
  String get ERROR_E120 {
    return Intl.message(
      'Duplicate input.',
      name: 'ERROR_E120',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use.`
  String get ERROR_EMAIL_ALREADY_IN_USE {
    return Intl.message(
      'Email already in use.',
      name: 'ERROR_EMAIL_ALREADY_IN_USE',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out all fields.`
  String get ERROR_EMPTY {
    return Intl.message(
      'Please fill out all fields.',
      name: 'ERROR_EMPTY',
      desc: '',
      args: [],
    );
  }

  /// `Invalid data.`
  String get ERROR_INVALID_CREDENTIAL {
    return Intl.message(
      'Invalid data.',
      name: 'ERROR_INVALID_CREDENTIAL',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email.`
  String get ERROR_INVALID_EMAIL {
    return Intl.message(
      'Invalid email.',
      name: 'ERROR_INVALID_EMAIL',
      desc: '',
      args: [],
    );
  }

  /// `The format of the phone number provided is incorrect.`
  String get ERROR_INVALID_PHONE_NUMBER {
    return Intl.message(
      'The format of the phone number provided is incorrect.',
      name: 'ERROR_INVALID_PHONE_NUMBER',
      desc: '',
      args: [],
    );
  }

  /// `Invalid pin.`
  String get ERROR_INVALID_VERIFICATION_CODE {
    return Intl.message(
      'Invalid pin.',
      name: 'ERROR_INVALID_VERIFICATION_CODE',
      desc: '',
      args: [],
    );
  }

  /// `An email address must be provided.`
  String get ERROR_MISSING_EMAIL {
    return Intl.message(
      'An email address must be provided.',
      name: 'ERROR_MISSING_EMAIL',
      desc: '',
      args: [],
    );
  }

  /// `A password must be provided.`
  String get ERROR_MISSING_PASSWORD {
    return Intl.message(
      'A password must be provided.',
      name: 'ERROR_MISSING_PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `To send verification codes, provide a phone number for the recipient.`
  String get ERROR_MISSING_PHONE_NUMBER {
    return Intl.message(
      'To send verification codes, provide a phone number for the recipient.',
      name: 'ERROR_MISSING_PHONE_NUMBER',
      desc: '',
      args: [],
    );
  }

  /// `Pin must be provided`
  String get ERROR_MISSING_VERIFICATION_CODE {
    return Intl.message(
      'Pin must be provided',
      name: 'ERROR_MISSING_VERIFICATION_CODE',
      desc: '',
      args: [],
    );
  }

  /// `Operation not allowed.`
  String get ERROR_OPERATION_NOT_ALLOWED {
    return Intl.message(
      'Operation not allowed.',
      name: 'ERROR_OPERATION_NOT_ALLOWED',
      desc: '',
      args: [],
    );
  }

  /// `Pin has expired. Please request a new one.`
  String get ERROR_SESSION_EXPIRED {
    return Intl.message(
      'Pin has expired. Please request a new one.',
      name: 'ERROR_SESSION_EXPIRED',
      desc: '',
      args: [],
    );
  }

  /// `We have blocked all requests from this device due to unusual activity. Please try again later.`
  String get ERROR_TOO_MANY_REQUESTS {
    return Intl.message(
      'We have blocked all requests from this device due to unusual activity. Please try again later.',
      name: 'ERROR_TOO_MANY_REQUESTS',
      desc: '',
      args: [],
    );
  }

  /// `User disabled.`
  String get ERROR_USER_DISABLED {
    return Intl.message(
      'User disabled.',
      name: 'ERROR_USER_DISABLED',
      desc: '',
      args: [],
    );
  }

  /// `User not found.`
  String get ERROR_USER_NOT_FOUND {
    return Intl.message(
      'User not found.',
      name: 'ERROR_USER_NOT_FOUND',
      desc: '',
      args: [],
    );
  }

  /// `The given password is too weak, please choose a stronger password.`
  String get ERROR_WEAK_PASSWORD {
    return Intl.message(
      'The given password is too weak, please choose a stronger password.',
      name: 'ERROR_WEAK_PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password.`
  String get ERROR_WRONG_PASSWORD {
    return Intl.message(
      'Wrong password.',
      name: 'ERROR_WRONG_PASSWORD',
      desc: '',
      args: [],
    );
  }

  /// `Automotive`
  String get cat_automotive {
    return Intl.message(
      'Automotive',
      name: 'cat_automotive',
      desc: '',
      args: [],
    );
  }

  /// `Beauty, Health & Pharmacy`
  String get cat_beauty {
    return Intl.message(
      'Beauty, Health & Pharmacy',
      name: 'cat_beauty',
      desc: '',
      args: [],
    );
  }

  /// `Digital Products`
  String get cat_digital {
    return Intl.message(
      'Digital Products',
      name: 'cat_digital',
      desc: '',
      args: [],
    );
  }

  /// `Electrical, Hardware & Tools`
  String get cat_electrical {
    return Intl.message(
      'Electrical, Hardware & Tools',
      name: 'cat_electrical',
      desc: '',
      args: [],
    );
  }

  /// `Electronics & Appliances`
  String get cat_electronics {
    return Intl.message(
      'Electronics & Appliances',
      name: 'cat_electronics',
      desc: '',
      args: [],
    );
  }

  /// `Fashion`
  String get cat_fashion {
    return Intl.message(
      'Fashion',
      name: 'cat_fashion',
      desc: '',
      args: [],
    );
  }

  /// `Furniture & Home Decor`
  String get cat_furniture {
    return Intl.message(
      'Furniture & Home Decor',
      name: 'cat_furniture',
      desc: '',
      args: [],
    );
  }

  /// `Gadgets & Entertainment`
  String get cat_gadget {
    return Intl.message(
      'Gadgets & Entertainment',
      name: 'cat_gadget',
      desc: '',
      args: [],
    );
  }

  /// `Groceries`
  String get cat_groceries {
    return Intl.message(
      'Groceries',
      name: 'cat_groceries',
      desc: '',
      args: [],
    );
  }

  /// `Household & Kitchen`
  String get cat_household {
    return Intl.message(
      'Household & Kitchen',
      name: 'cat_household',
      desc: '',
      args: [],
    );
  }

  /// `Mother, Kids & Baby`
  String get cat_mother {
    return Intl.message(
      'Mother, Kids & Baby',
      name: 'cat_mother',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get cat_offers {
    return Intl.message(
      'Offers',
      name: 'cat_offers',
      desc: '',
      args: [],
    );
  }

  /// `Pets`
  String get cat_pets {
    return Intl.message(
      'Pets',
      name: 'cat_pets',
      desc: '',
      args: [],
    );
  }

  /// `Sports & Outdoor`
  String get cat_sports {
    return Intl.message(
      'Sports & Outdoor',
      name: 'cat_sports',
      desc: '',
      args: [],
    );
  }

  /// `Stationery`
  String get cat_stationery {
    return Intl.message(
      'Stationery',
      name: 'cat_stationery',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get dialog_cancel {
    return Intl.message(
      'Cancel',
      name: 'dialog_cancel',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get dialog_ok {
    return Intl.message(
      'OK',
      name: 'dialog_ok',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get forgot_reset {
    return Intl.message(
      'Reset Password',
      name: 'forgot_reset',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get intro_done {
    return Intl.message(
      'Get Started',
      name: 'intro_done',
      desc: '',
      args: [],
    );
  }

  /// `NEXT`
  String get intro_next {
    return Intl.message(
      'NEXT',
      name: 'intro_next',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get intro_skip {
    return Intl.message(
      'SKIP',
      name: 'intro_skip',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Apple ID`
  String get login_apple {
    return Intl.message(
      'Log in with Apple ID',
      name: 'login_apple',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Google Account`
  String get login_google {
    return Intl.message(
      'Log in with Google Account',
      name: 'login_google',
      desc: '',
      args: [],
    );
  }

  /// `Log in with phone number`
  String get login_phone {
    return Intl.message(
      'Log in with phone number',
      name: 'login_phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_email {
    return Intl.message(
      'Email',
      name: 'login_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get login_create_account {
    return Intl.message(
      'Create account',
      name: 'login_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get login_forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'login_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get menu_account {
    return Intl.message(
      'Account',
      name: 'menu_account',
      desc: '',
      args: [],
    );
  }

  /// `Allo Explore`
  String get menu_allo {
    return Intl.message(
      'Allo Explore',
      name: 'menu_allo',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get menu_categories {
    return Intl.message(
      'Categories',
      name: 'menu_categories',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get menu_contact {
    return Intl.message(
      'Contact Us',
      name: 'menu_contact',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get menu_help {
    return Intl.message(
      'Help',
      name: 'menu_help',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get menu_home {
    return Intl.message(
      'Home',
      name: 'menu_home',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get menu_language {
    return Intl.message(
      'Language',
      name: 'menu_language',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get menu_logout {
    return Intl.message(
      'Log Out',
      name: 'menu_logout',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get menu_messages {
    return Intl.message(
      'Messages',
      name: 'menu_messages',
      desc: '',
      args: [],
    );
  }

  /// `Promos`
  String get menu_promos {
    return Intl.message(
      'Promos',
      name: 'menu_promos',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get menu_settings {
    return Intl.message(
      'Settings',
      name: 'menu_settings',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get menu_support {
    return Intl.message(
      'Support',
      name: 'menu_support',
      desc: '',
      args: [],
    );
  }

  /// `No messages.`
  String get messages_empty {
    return Intl.message(
      'No messages.',
      name: 'messages_empty',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Setoko`
  String get welcome_title {
    return Intl.message(
      'Welcome to Setoko',
      name: 'welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Looks like you're new here. Let's follow a short tutorial!`
  String get welcome_description {
    return Intl.message(
      'Looks like you\'re new here. Let\'s follow a short tutorial!',
      name: 'welcome_description',
      desc: '',
      args: [],
    );
  }

  /// `NEXT TIME`
  String get welcome_button_later {
    return Intl.message(
      'NEXT TIME',
      name: 'welcome_button_later',
      desc: '',
      args: [],
    );
  }

  /// `LET'S DO IT`
  String get welcome_button_proceed {
    return Intl.message(
      'LET\'S DO IT',
      name: 'welcome_button_proceed',
      desc: '',
      args: [],
    );
  }

  /// `What are you looking for`
  String get search_hint_text {
    return Intl.message(
      'What are you looking for',
      name: 'search_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get your favorite products\nat the best prices`
  String get intro_1_title {
    return Intl.message(
      'Get your favorite products\nat the best prices',
      name: 'intro_1_title',
      desc: '',
      args: [],
    );
  }

  /// `Discover the perfect prices that you will find\nnowhere else across the country. Enjoy\nretail therapy but stay budget-friendly!`
  String get intro_1_description {
    return Intl.message(
      'Discover the perfect prices that you will find\nnowhere else across the country. Enjoy\nretail therapy but stay budget-friendly!',
      name: 'intro_1_description',
      desc: '',
      args: [],
    );
  }

  /// `Authentic products only.\nNo room for fake ones!`
  String get intro_2_title {
    return Intl.message(
      'Authentic products only.\nNo room for fake ones!',
      name: 'intro_2_title',
      desc: '',
      args: [],
    );
  }

  /// `You will enjoy the quality of 100% authentic products when you shop with us.\nPromise!`
  String get intro_2_description {
    return Intl.message(
      'You will enjoy the quality of 100% authentic products when you shop with us.\nPromise!',
      name: 'intro_2_description',
      desc: '',
      args: [],
    );
  }

  /// `Shop with peace of mind\n`
  String get intro_3_title {
    return Intl.message(
      'Shop with peace of mind\n',
      name: 'intro_3_title',
      desc: '',
      args: [],
    );
  }

  /// `Get access to 100.000+ products from 6.000+ trusted brands. Shop everything at once and get it delivered safely at your doorstep!`
  String get intro_3_description {
    return Intl.message(
      'Get access to 100.000+ products from 6.000+ trusted brands. Shop everything at once and get it delivered safely at your doorstep!',
      name: 'intro_3_description',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message(
      'Log In',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Skip for now`
  String get skip_for_now {
    return Intl.message(
      'Skip for now',
      name: 'skip_for_now',
      desc: '',
      args: [],
    );
  }

  /// `Select app language`
  String get select_app_language {
    return Intl.message(
      'Select app language',
      name: 'select_app_language',
      desc: '',
      args: [],
    );
  }

  /// `We know you’ll like this!`
  String get we_know_you_ll_like_this {
    return Intl.message(
      'We know you’ll like this!',
      name: 'we_know_you_ll_like_this',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get see_all {
    return Intl.message(
      'See all',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Shop by Categories`
  String get shop_by_categories {
    return Intl.message(
      'Shop by Categories',
      name: 'shop_by_categories',
      desc: '',
      args: [],
    );
  }

  /// `My Coupons`
  String get my_coupons {
    return Intl.message(
      'My Coupons',
      name: 'my_coupons',
      desc: '',
      args: [],
    );
  }

  /// `Coupons`
  String get coupons {
    return Intl.message(
      'Coupons',
      name: 'coupons',
      desc: '',
      args: [],
    );
  }

  /// `Flash Sale`
  String get flash_sale {
    return Intl.message(
      'Flash Sale',
      name: 'flash_sale',
      desc: '',
      args: [],
    );
  }

  /// `Product Details`
  String get product_details {
    return Intl.message(
      'Product Details',
      name: 'product_details',
      desc: '',
      args: [],
    );
  }

  /// `Specifications`
  String get specifications {
    return Intl.message(
      'Specifications',
      name: 'specifications',
      desc: '',
      args: [],
    );
  }

  /// `You may also like`
  String get you_may_also_like {
    return Intl.message(
      'You may also like',
      name: 'you_may_also_like',
      desc: '',
      args: [],
    );
  }

  /// `Your last seen`
  String get your_last_seen {
    return Intl.message(
      'Your last seen',
      name: 'your_last_seen',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buy_now {
    return Intl.message(
      'Buy Now',
      name: 'buy_now',
      desc: '',
      args: [],
    );
  }

  /// `Shop smart with coupons`
  String get shop_smart_with_coupons {
    return Intl.message(
      'Shop smart with coupons',
      name: 'shop_smart_with_coupons',
      desc: '',
      args: [],
    );
  }

  /// `Period`
  String get period {
    return Intl.message(
      'Period',
      name: 'period',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Promo Period`
  String get promo_period {
    return Intl.message(
      'Promo Period',
      name: 'promo_period',
      desc: '',
      args: [],
    );
  }

  /// `Promo Code`
  String get promo_code {
    return Intl.message(
      'Promo Code',
      name: 'promo_code',
      desc: '',
      args: [],
    );
  }

  /// `Copy Code`
  String get copy_code {
    return Intl.message(
      'Copy Code',
      name: 'copy_code',
      desc: '',
      args: [],
    );
  }

  /// `Try Subscriptions!`
  String get try_subscriptions {
    return Intl.message(
      'Try Subscriptions!',
      name: 'try_subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Your daily dose of inspirations`
  String get your_daily_dose_of_inspirations {
    return Intl.message(
      'Your daily dose of inspirations',
      name: 'your_daily_dose_of_inspirations',
      desc: '',
      args: [],
    );
  }

  /// `Setoko is your new bestie! Here’s why`
  String get setoko_is_your_new_bestie_here_s_why {
    return Intl.message(
      'Setoko is your new bestie! Here’s why',
      name: 'setoko_is_your_new_bestie_here_s_why',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Prepaid`
  String get mobile_prepaid {
    return Intl.message(
      'Mobile Prepaid',
      name: 'mobile_prepaid',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Postpaid`
  String get mobile_postpaid {
    return Intl.message(
      'Mobile Postpaid',
      name: 'mobile_postpaid',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobile_number {
    return Intl.message(
      'Mobile Number',
      name: 'mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message(
      'Buy',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Top-Up & Bill Payment`
  String get top_up_bill_payment {
    return Intl.message(
      'Top-Up & Bill Payment',
      name: 'top_up_bill_payment',
      desc: '',
      args: [],
    );
  }

  /// `Reorder your past purchases`
  String get reorder_your_past_purchases {
    return Intl.message(
      'Reorder your past purchases',
      name: 'reorder_your_past_purchases',
      desc: '',
      args: [],
    );
  }

  /// `See all Promo`
  String get see_all_promo {
    return Intl.message(
      'See all Promo',
      name: 'see_all_promo',
      desc: '',
      args: [],
    );
  }

  /// `Popular Brands`
  String get popular_brands {
    return Intl.message(
      'Popular Brands',
      name: 'popular_brands',
      desc: '',
      args: [],
    );
  }

  /// `Setoko's Highlights`
  String get setokos_highlights {
    return Intl.message(
      'Setoko\'s Highlights',
      name: 'setokos_highlights',
      desc: '',
      args: [],
    );
  }

  /// `All Categories`
  String get all_categories {
    return Intl.message(
      'All Categories',
      name: 'all_categories',
      desc: '',
      args: [],
    );
  }

  /// `What’s New`
  String get what_s_new {
    return Intl.message(
      'What’s New',
      name: 'what_s_new',
      desc: '',
      args: [],
    );
  }

  /// `Recommended for You`
  String get recommended_for_you {
    return Intl.message(
      'Recommended for You',
      name: 'recommended_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Search products`
  String get search_products {
    return Intl.message(
      'Search products',
      name: 'search_products',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get best_seller {
    return Intl.message(
      'Best Seller',
      name: 'best_seller',
      desc: '',
      args: [],
    );
  }

  /// `Estimated weight: `
  String get estimated_weight {
    return Intl.message(
      'Estimated weight: ',
      name: 'estimated_weight',
      desc: '',
      args: [],
    );
  }

  /// `Brand: `
  String get brand {
    return Intl.message(
      'Brand: ',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get try_again {
    return Intl.message(
      'Try Again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `ACCOUNT`
  String get account {
    return Intl.message(
      'ACCOUNT',
      name: 'account',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'in'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}