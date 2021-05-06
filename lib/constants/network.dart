class NetworkInfo {

  // http://localhost:3000/blog/blogs


  static final String protocol= r"http://";
  static final String url=r"localhost:3000";

  // static final String url = r"alpha.mindamigo.com";
  static final String subUrl = r"blog/blogs";
  static final String networkInfo = NetworkInfo.protocol + NetworkInfo.url;
}

class ApiType {
  static final String blog = r'/blog/blogs';
}

class MethodType {
  static final get = r"/get";
  static final post = r"/post";
  static final put = r"/put";
  static final delete = r"/delete";
}
