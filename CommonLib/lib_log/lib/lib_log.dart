library lib_log;

import 'dart:math';

///
class Logging {
  static LogLevel _level = LogLevel.VERBOSE;

  static init(LogLevel level) {
    _level = level;
  }

  static v(String tag, String message) {
    Message msg = Message(LogLevel.VERBOSE, tag, DateTime.now(), message);
    _print(msg);
  }

  static d(String tag, String message) {
    Message msg = Message(LogLevel.DEBUG, tag, DateTime.now(), message);
    _print(msg);
  }

  static i(String tag, String message) {
    Message msg = Message(LogLevel.INFO, tag, DateTime.now(), message);
    _print(msg);
  }

  static w(String tag, String message) {
    Message msg = Message(LogLevel.WARNING, tag, DateTime.now(), message);
    _print(msg);
  }

  static e(String tag, String message) {
    Message msg = Message(LogLevel.ERROR, tag, DateTime.now(), message);
    _print(msg);
  }

  static _print(Message msg) {
    if (msg.level.index < _level.index) {
      return;
    }
    int MAX_MESSAGE_LENGTH = 800;
    String message = msg.toString();
    if (message.length < MAX_MESSAGE_LENGTH) {
      print(message);
    } else {
      var tmp = message;
      do {
        print(tmp.substring(0, min(MAX_MESSAGE_LENGTH, tmp.length)));
        tmp = tmp.substring(min(MAX_MESSAGE_LENGTH, tmp.length));
      } while (tmp.length > 0);
    }
  }
}

enum LogLevel {
  VERBOSE,
  DEBUG,
  INFO,
  WARNING,
  ERROR,
}

class Message {
  late String tag;
  late LogLevel level;
  late String message;
  late DateTime time;
  Message(this.level, this.tag, this.time, this.message);
  @override
  String toString() {
    var levels = "VDIWE";
    return "[${levels[level.index]}][$time][$tag]$message";
  }
}

// class LoggingTrace {
//   late final StackTrace _trace;

//   late String fileName;
//   late int lineNumber;
//   late String functionName;

//   LoggingTrace(this._trace) {
//     _parseTrace();
//   }

//   void _parseTrace() {
//     var traceString = this._trace.toString().split("\n")[1];
//     print(traceString);
//     var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
//     var fileInfo = traceString.substring(indexOfFileName);
//     var listOfInfos = fileInfo.split(":");
//     this.fileName = listOfInfos[0];
//     this.lineNumber = int.parse(listOfInfos[1]);
//     this.functionName =
//         RegExp(r' [A-Za-z_]+ ').allMatches(traceString).elementAt(0).group(1) ??
//             "";
//   }
// }
