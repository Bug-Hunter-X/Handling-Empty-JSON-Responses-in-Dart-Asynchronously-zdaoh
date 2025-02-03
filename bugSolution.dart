```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if jsonData is a list and not empty before accessing elements
      if (jsonData is List && jsonData.isNotEmpty) {
        final dataList = jsonData.cast<Map<String, dynamic>>();
        final firstItem = dataList[0]; 
        // Process firstItem
      } else {
        print('JSON response is empty or not a list.');
        //Handle the case of empty or invalid JSON response
      }

    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Handle the error appropriately
  }
}
```