void main() {
  var authenticationHandler = AuthenticationHandler();
  var authorizationHandler = AuthorizationHandler();
  var loggingHandler = LoggingHandler();

  authenticationHandler.setNext(authorizationHandler);
  authorizationHandler.setNext(loggingHandler);

  // Send requests to the chain
  authenticationHandler.handleRequest(Request('Authenticate User'));
  authenticationHandler.handleRequest(Request('Authorize User'));
  authenticationHandler.handleRequest(Request('Unknown Request'));
}

abstract class Handler {
  Handler? _next;

  void setNext(Handler handler) {
    _next = handler;
  }

  void handleRequest(Request request) {
    if (_next != null) {
      _next!.handleRequest(request);
    } else {
      print('No handler found for ${request.description}');
    }
  }
}

class Request {
  String description;
  Request(this.description);
}

class AuthenticationHandler extends Handler {
  void handleRequest(Request request) {
    if (request.description == 'Authenticate User') {
      print('Authentication Successful!');
    } else {
      super.handleRequest(request);
    }
  }
}

class AuthorizationHandler extends Handler {
  void handleRequest(Request request) {
    if (request.description == 'Authorize User') {
      print('Authorization Successful!');
    } else {
      super.handleRequest(request);
    }
  }
}

class LoggingHandler extends Handler {
  void handleRequest(Request request) {
    print('Logging Request: ${request.description}');
    super.handleRequest(request);
  }
}
