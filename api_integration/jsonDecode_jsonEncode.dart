
//The jsonEncode function converts Dart objects into JSON-encoded strings. 
//It performs serialization, turning Dart data structures like Map, List, or objects with a toJson method into a JSON string.

//The jsonDecode function converts a JSON-encoded string into a Dart object, typically a Map<String, dynamic> or a List<dynamic> depending on the JSON structure.

import 'dart:convert';

void main() {
  // Original data (Map)
  final userData = {'name': 'John Smith', 'email': 'john@example.com'};

  // Encode to JSON string
  final jsonString = jsonEncode(userData);
  print('Encoded JSON: $jsonString');

  // Decode back to Map
  final decodedData = jsonDecode(jsonString);
  print('Decoded Map: $decodedData');
}

//Output:
//Encoded JSON: {"name":"John Smith","email":"john@example.com"}
//Decoded Map: {name: John Smith, email: john@example.com}

