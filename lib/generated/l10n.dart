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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Browse`
  String get Browse {
    return Intl.message(
      'Browse',
      name: 'Browse',
      desc: '',
      args: [],
    );
  }

  /// `Audio`
  String get Audio {
    return Intl.message(
      'Audio',
      name: 'Audio',
      desc: '',
      args: [],
    );
  }

  /// `Drones + Electronics`
  String get DronesElectronics {
    return Intl.message(
      'Drones + Electronics',
      name: 'DronesElectronics',
      desc: '',
      args: [],
    );
  }

  /// `Photo + Video`
  String get PhotoVideo {
    return Intl.message(
      'Photo + Video',
      name: 'PhotoVideo',
      desc: '',
      args: [],
    );
  }

  /// `Gaming + VR`
  String get GamingVR {
    return Intl.message(
      'Gaming + VR',
      name: 'GamingVR',
      desc: '',
      args: [],
    );
  }

  /// `Networking`
  String get Networking {
    return Intl.message(
      'Networking',
      name: 'Networking',
      desc: '',
      args: [],
    );
  }

  /// `Notebooks + PCs`
  String get NotebooksPCs {
    return Intl.message(
      'Notebooks + PCs',
      name: 'NotebooksPCs',
      desc: '',
      args: [],
    );
  }

  /// `PC components`
  String get PCcomponents {
    return Intl.message(
      'PC components',
      name: 'PCcomponents',
      desc: '',
      args: [],
    );
  }

  /// `Peripherals`
  String get Peripherals {
    return Intl.message(
      'Peripherals',
      name: 'Peripherals',
      desc: '',
      args: [],
    );
  }

  /// `Smartphones + Tablets`
  String get SmartphonesTablets {
    return Intl.message(
      'Smartphones + Tablets',
      name: 'SmartphonesTablets',
      desc: '',
      args: [],
    );
  }

  /// `Software solutions`
  String get Softwaresolutions {
    return Intl.message(
      'Software solutions',
      name: 'Softwaresolutions',
      desc: '',
      args: [],
    );
  }

  /// `TV + Home cinema`
  String get TVHomecinema {
    return Intl.message(
      'TV + Home cinema',
      name: 'TVHomecinema',
      desc: '',
      args: [],
    );
  }

  /// `Headphones`
  String get HeadPhones {
    return Intl.message(
      'Headphones',
      name: 'HeadPhones',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get Category {
    return Intl.message(
      'Category',
      name: 'Category',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get Brand {
    return Intl.message(
      'Brand',
      name: 'Brand',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message(
      'Price',
      name: 'Price',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
