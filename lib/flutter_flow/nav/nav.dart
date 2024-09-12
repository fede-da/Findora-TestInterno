import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : Onboarding0Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : Onboarding0Widget(),
        ),
        FFRoute(
          name: 'Onboarding0',
          path: '/onboarding0',
          builder: (context, params) => Onboarding0Widget(),
        ),
        FFRoute(
          name: 'Onboarding1',
          path: '/onboarding1',
          builder: (context, params) => Onboarding1Widget(),
        ),
        FFRoute(
          name: 'Onboarding2',
          path: '/onboarding2',
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: 'Onboarding3',
          path: '/onboarding3',
          builder: (context, params) => Onboarding3Widget(),
        ),
        FFRoute(
          name: 'Onboarding4',
          path: '/onboarding4',
          builder: (context, params) => Onboarding4Widget(),
        ),
        FFRoute(
          name: 'Club0',
          path: '/club0',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Club0') : Club0Widget(),
        ),
        FFRoute(
          name: 'Accedi',
          path: '/accedi',
          builder: (context, params) => AccediWidget(),
        ),
        FFRoute(
          name: 'PinCode',
          path: '/pinCode',
          builder: (context, params) => PinCodeWidget(),
        ),
        FFRoute(
          name: 'Settings1Notifications',
          path: '/settings1Notifications',
          builder: (context, params) => Settings1NotificationsWidget(),
        ),
        FFRoute(
          name: 'Details03TransactionsSummary',
          path: '/details03TransactionsSummary',
          builder: (context, params) => Details03TransactionsSummaryWidget(),
        ),
        FFRoute(
          name: 'Profile18UserDetailsOther',
          path: '/profile18UserDetailsOther',
          builder: (context, params) => Profile18UserDetailsOtherWidget(),
        ),
        FFRoute(
          name: 'Venditoreprofil1',
          path: '/venditoreprofil1',
          builder: (context, params) => Venditoreprofil1Widget(),
        ),
        FFRoute(
          name: 'EsploraCategorie',
          path: '/esploraCategorie',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'EsploraCategorie')
              : EsploraCategorieWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: NotificationsWidget(),
          ),
        ),
        FFRoute(
          name: 'Interessi',
          path: '/interessi',
          builder: (context, params) => InteressiWidget(),
        ),
        FFRoute(
          name: 'RecensioniProfilo',
          path: '/recensioniProfilo',
          builder: (context, params) => RecensioniProfiloWidget(),
        ),
        FFRoute(
          name: 'DettaglioOrdini',
          path: '/dettaglioOrdini',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: DettaglioOrdiniWidget(),
          ),
        ),
        FFRoute(
          name: 'paginaEditProfilo',
          path: '/paginaEditProfilo',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PaginaEditProfiloWidget(
              paddingLaterale: params.getParam(
                'paddingLaterale',
                ParamType.int,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'SottocategoriaSelezionata',
          path: '/sottocategoriaSelezionata',
          builder: (context, params) => SottocategoriaSelezionataWidget(
            subcategoryList: params.getParam<String>(
              'subcategoryList',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'RicercaAnnunciPerCategoria',
          path: '/ricercaAnnunciPerCategoria',
          builder: (context, params) => RicercaAnnunciPerCategoriaWidget(
            categoryToSearch: params.getParam(
              'categoryToSearch',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'QuestionnaireUser',
          path: '/questionnaireUser',
          builder: (context, params) => QuestionnaireUserWidget(),
        ),
        FFRoute(
          name: 'FINDER_BASE',
          path: '/finderBase',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'FINDER_BASE')
              : NavBarPage(
                  initialPage: 'FINDER_BASE',
                  page: FinderBaseWidget(),
                ),
        ),
        FFRoute(
          name: 'modificaDatiProfilo',
          path: '/modificaDatiProfilo',
          builder: (context, params) => ModificaDatiProfiloWidget(
            annunci: params.getParam(
              'annunci',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Advertisement'],
            ),
          ),
        ),
        FFRoute(
          name: 'terminiDiServizioPage',
          path: '/terminiDiServizioPage',
          builder: (context, params) => TerminiDiServizioPageWidget(),
        ),
        FFRoute(
          name: 'EsploraServizi',
          path: '/esploraServizi',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EsploraServiziWidget(
              categorie: params.getParam<String>(
                'categorie',
                ParamType.String,
                isList: true,
              ),
              title: params.getParam(
                'title',
                ParamType.String,
              ),
              subTitle: params.getParam(
                'subTitle',
                ParamType.String,
              ),
              icon: params.getParam(
                'icon',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'EsploraSottoServizio',
          path: '/esploraSottoServizio',
          asyncParams: {
            'annunci':
                getDoc(['Advertisement'], AdvertisementRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EsploraSottoServizioWidget(
              serviceSottoCategorie: params.getParam<String>(
                'serviceSottoCategorie',
                ParamType.String,
                isList: true,
              ),
              annunci: params.getParam(
                'annunci',
                ParamType.Document,
              ),
              currentCategory: params.getParam(
                'currentCategory',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'SupportoImpostazioni',
          path: '/supportoImpostazioni',
          builder: (context, params) => SupportoImpostazioniWidget(),
        ),
        FFRoute(
          name: 'PaginaAnnuncio',
          path: '/paginaAnnuncio',
          asyncParams: {
            'annuncio':
                getDoc(['Advertisement'], AdvertisementRecord.fromSnapshot),
          },
          builder: (context, params) => PaginaAnnuncioWidget(
            annuncio: params.getParam(
              'annuncio',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'QuestionnaireVendor',
          path: '/questionnaireVendor',
          builder: (context, params) => QuestionnaireVendorWidget(),
        ),
        FFRoute(
          name: 'creaAnnuncio',
          path: '/creaAnnuncio',
          builder: (context, params) => CreaAnnuncioWidget(),
        ),
        FFRoute(
          name: 'dashboard',
          path: '/dashboard',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: DashboardWidget(),
          ),
        ),
        FFRoute(
          name: 'paginaDettaglioAnnuncioVistaCreatore',
          path: '/paginaDettaglioAnnuncioVistaCreatore',
          asyncParams: {
            'annuncioCorrente':
                getDoc(['Advertisement'], AdvertisementRecord.fromSnapshot),
          },
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PaginaDettaglioAnnuncioVistaCreatoreWidget(
              annuncioCorrente: params.getParam(
                'annuncioCorrente',
                ParamType.Document,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'PaginaSwiper',
          path: '/paginaSwiper',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PaginaSwiperWidget(
              category: params.getParam(
                'category',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'modificaAnnuncio',
          path: '/modificaAnnuncio',
          asyncParams: {
            'annuncioCorrente':
                getDoc(['Advertisement'], AdvertisementRecord.fromSnapshot),
          },
          builder: (context, params) => ModificaAnnuncioWidget(
            annuncioCorrente: params.getParam(
              'annuncioCorrente',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'personalProfile',
          path: '/personalProfile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'personalProfile')
              : PersonalProfileWidget(),
        ),
        FFRoute(
          name: 'WIPPage',
          path: '/wIPPage',
          builder: (context, params) => WIPPageWidget(),
        ),
        FFRoute(
          name: 'otherProfile',
          path: '/otherProfile',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OtherProfileWidget(
              idUtente: params.getParam(
                'idUtente',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'chat_home',
          path: '/chatHome',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'chat_home')
              : ChatHomeWidget(),
        ),
        FFRoute(
          name: 'EsploraCategorieCopy',
          path: '/esploraCategorieCopy',
          builder: (context, params) => EsploraCategorieCopyWidget(),
        ),
        FFRoute(
          name: 'chat_detail',
          path: '/chatDetail',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => ChatDetailWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'invite_users_2_chat',
          path: '/inviteUsers2Chat',
          builder: (context, params) => InviteUsers2ChatWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboarding0';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Findora.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
