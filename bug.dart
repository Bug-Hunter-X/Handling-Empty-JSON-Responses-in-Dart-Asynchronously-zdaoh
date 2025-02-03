```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Assuming jsonData is a list of maps
      final dataList = jsonData.cast<Map<String, dynamic>>();

      //Error:  The following line throws an error if jsonData is not a list
      final firstItem = dataList[0]; 

    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Handle the error appropriately, like showing an error message
  }
}
```