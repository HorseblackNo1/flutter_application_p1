import 'dart:convert';

// import 'dart:developer';

const decoder = JsonDecoder();
const encoder = JsonEncoder.withIndent('  ');

String prettyJson(Object input) {
  if (input is! String) {
    input = json.encode(input);
  }

  var object = decoder.convert(input);
  var prettyString = encoder.convert(object);
  return prettyString;
}