# Handling Empty JSON Responses in Dart

This repository demonstrates a common error in Dart when handling asynchronous API calls and JSON responses. The code attempts to access the first element of a JSON array, which leads to an error if the array is empty or the JSON structure is unexpected.  The solution showcases robust error handling to mitigate this.

## Bug
The `bug.dart` file contains code that fetches data from an API. It assumes the JSON response is always a list and tries to access the first element.  If the response is empty or not a list, an exception is thrown.

## Solution
The `bugSolution.dart` file corrects this by implementing proper error checking before attempting to access elements of the JSON response.  This approach ensures that the application handles unexpected scenarios gracefully, preventing crashes.