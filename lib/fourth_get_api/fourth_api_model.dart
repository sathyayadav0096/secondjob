class ThirdModelApi {
  Args? args;
  Headers? headers;
  String? url;

  ThirdModelApi({this.args, this.headers, this.url});

  ThirdModelApi.fromJson(Map<String, dynamic> json) {
    args = json['args'] != null ? new Args.fromJson(json['args']) : null;
    headers =
    json['headers'] != null ? new Headers.fromJson(json['headers']) : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.args != null) {
      data['args'] = this.args!.toJson();
    }
    if (this.headers != null) {
      data['headers'] = this.headers!.toJson();
    }
    data['url'] = this.url;
    return data;
  }
}

class Args {
  String? foo1;
  String? foo2;

  Args({this.foo1, this.foo2});

  Args.fromJson(Map<String, dynamic> json) {
    foo1 = json['foo1'];
    foo2 = json['foo2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foo1'] = this.foo1;
    data['foo2'] = this.foo2;
    return data;
  }
}

class Headers {
  String? xForwardedProto;
  String? xForwardedPort;
  String? host;
  String? xAmznTraceId;
  String? userAgent;
  String? accept;
  String? postmanToken;
  String? acceptEncoding;
  String? cookie;

  Headers(
      {this.xForwardedProto,
        this.xForwardedPort,
        this.host,
        this.xAmznTraceId,
        this.userAgent,
        this.accept,
        this.postmanToken,
        this.acceptEncoding,
        this.cookie});

  Headers.fromJson(Map<String, dynamic> json) {
    xForwardedProto = json['x-forwarded-proto'];
    xForwardedPort = json['x-forwarded-port'];
    host = json['host'];
    xAmznTraceId = json['x-amzn-trace-id'];
    userAgent = json['user-agent'];
    accept = json['accept'];
    postmanToken = json['postman-token'];
    acceptEncoding = json['accept-encoding'];
    cookie = json['cookie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x-forwarded-proto'] = this.xForwardedProto;
    data['x-forwarded-port'] = this.xForwardedPort;
    data['host'] = this.host;
    data['x-amzn-trace-id'] = this.xAmznTraceId;
    data['user-agent'] = this.userAgent;
    data['accept'] = this.accept;
    data['postman-token'] = this.postmanToken;
    data['accept-encoding'] = this.acceptEncoding;
    data['cookie'] = this.cookie;
    return data;
  }
}
