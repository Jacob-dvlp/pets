import 'app_imports_page.dart';

class AppRoutes {
  static final List<GetPage> routePage = [
    GetPage(
        name: CatPage.routeName,
        page: () => const CatPage(),
        binding: CatBindings()),
    GetPage(
        name: LoginPage.routName,
        page: () => const LoginPage(),
        binding: LoginBindings()),
    GetPage(
        name: DogsPage.routName,
        page: () => const DogsPage(),
        binding: DogsBindings()),
    GetPage(
      name: Home.routName,
      page: () => const Home(),
      bindings: [
        HomepageBindings(),
        DogsBindings(),
        CatBindings(),
      ],
    ),
    GetPage(
      name: AboutAnimalPage.routName,
      page: () => const AboutAnimalPage(),
      binding: AboutAnimalBindings(),
    )
  ];
}
