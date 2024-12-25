//example for Future with async and await

Future<void> fetchData() async {
  print('Start fetching data...');
  await Future.delayed(Duration(seconds: 3));
  print('Data fetched!');
}

void main() {
  print('Main function starts');
  fetchData(); // Non-blocking; execution continues in main
  print('Main function ends');
}

//Future<void> fetchData() async {
//   print('Start fetching data...');
//   await Future.delayed(Duration(seconds: 3));
//   print('Data fetched!');
// }

// void main() async {
//   print('Main function starts');
//   await fetchData(); // Blocks main until fetchData completes
//   print('Main function ends');
// }
