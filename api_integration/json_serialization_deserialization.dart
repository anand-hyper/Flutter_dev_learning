

//Encoding and serialization are the same thing—turning a data structure into a string.
//Decoding and deserialization are the opposite process—turning a string into a data structure.
//However, serialization also commonly refers to the entire process of translating data structures to and from a more easily readable format.

import 'dart:convert';

// Example JSON string
const jsonString = '''
{
  "name": "John Smith",
  "email": "john@example.com",
  "class": "Premium"
}
''';

// User class
class User {
  final String name;
  final String email;
  final String userClass; // Renamed 'class' to 'userClass'

  User(this.name, this.email, this.userClass);

  // Constructor to create a User from JSON
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        email = json['email'] as String,
        userClass = json['class'] as String; // Handle 'class' field here

  // Method to convert a User to JSON
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'class': userClass, // Output 'class' in the correct format
      };
}

void main() {
  // Decode JSON string to a map
  final userMap = jsonDecode(jsonString) as Map<String, dynamic>;

  // Create a User object from the map
  final user = User.fromJson(userMap);

  // Print User details
  print('Howdy, ${user.name}!');
  print('We sent the verification link to ${user.email}.');
  print('User class: ${user.userClass}');
}
