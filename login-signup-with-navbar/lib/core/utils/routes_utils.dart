enum PAGES {
  auth,
  login,
  signup,
  home,
  second,
  error,
}

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.auth:
        return "/auth";
      case PAGES.login:
        return "/login";
      case PAGES.signup:
        return "/signup";
      case PAGES.home:
        return "/";
      case PAGES.second:
        return "/second";
      case PAGES.error:
        return "/error";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.auth:
        return "auth";
      case PAGES.login:
        return "login";
      case PAGES.signup:
        return "signup";
      case PAGES.home:
        return "home";
      case PAGES.second:
        return "second";
      case PAGES.error:
        return "error";
      default:
        return "home";
    }
  }

  String get screenTitle {
    switch (this) {
      case PAGES.home:
        return "Home Page";
      case PAGES.second:
        return "Second Page";
      case PAGES.error:
        return "Error Page";
      default:
        return "Home Page";
    }
  }

  String get navbarText {
    switch (this) {
      case PAGES.home:
        return "Home";
      case PAGES.second:
        return "Second";
      default:
        return "Home";
    }
  }
}
