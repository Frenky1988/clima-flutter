import 'dart:io';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

// void main() {
//   performTasks();
// }
//
// void performTasks() async {
//   task1();
//   String task2Result = await task2();
//   task3(task2Result);
// }
//
// void task1() {
//   String result = 'task 1 data';
//   print('Task 1 complete');
// }
//
// Future<String> task2() async {
//   Duration threeSeconds = Duration(seconds: 3);
//   String result;
//
//   await Future.delayed(threeSeconds, () {
//     result = 'task 2 data';
//     print('Task 2 complete');
//   });
//   return result;
// }
//
// void task3(String task2Data) {
//   String result = 'task 3 data';
//   print('Task 3 complete $task2Data');
// }

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
