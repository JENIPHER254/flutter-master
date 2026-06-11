import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // 🌐 Base URL (fake API for learning)
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  // =========================
  // 🧾 HEADERS (IMPORTANT)
  // =========================
  /*
    Headers = extra information sent with every request.

    Common items inside headers:
    --------------------------------------------
    1. Content-Type  → tells server what you're sending
    2. Accept        → tells server what you want back
    3. Authorization → login token / API key
    4. User-Agent    → device/app info (optional)
    5. Cache-Control → caching rules (optional)

    URL: https://api.com/posts
    HEADERS: {
      "Content-Type": "application/json",
      "Authorization": "Bearer TOKEN"
    }
    BODY: { "title": "Hello" }
  */

  Map<String, String> get headers => {
    "Content-Type": "application/json", // sending JSON data
    "Accept": "application/json", // expect JSON response
    "Authorization": "Bearer YOUR_TOKEN_HERE", // login token (if required)
  };

  // =========================
  // 📥 GET REQUEST (READ DATA)
  // =========================
  Future<void> getPosts() async {
    final url = Uri.parse("$baseUrl/posts");

    final response = await http.get(url, headers: headers);

    print("GET STATUS: ${response.statusCode}");
    print("GET RESPONSE: ${response.body}");

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      print("First Post: ${data[0]}");
    }
  }

  // =========================
  // 📤 POST REQUEST (CREATE DATA)
  // =========================
  Future<void> createPost() async {
    final url = Uri.parse("$baseUrl/posts");

    // 🧾 Request body (data you send to server)
    Map<String, dynamic> body = {
      "title": "Flutter API",
      "body": "Learning API calls",
      "userId": 1,
    };

    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(body), // convert Map → JSON string
    );

    print("POST STATUS: ${response.statusCode}");
    print("POST RESPONSE: ${response.body}");
  }

  // =========================
  // ✏️ PUT REQUEST (UPDATE DATA)
  // =========================
  Future<void> updatePost() async {
    final url = Uri.parse("$baseUrl/posts/1");

    Map<String, dynamic> body = {
      "id": 1,
      "title": "Updated Title",
      "body": "Updated Content",
      "userId": 1,
    };

    final response = await http.put(
      url,
      headers: headers,
      body: jsonEncode(body),
    );

    print("PUT STATUS: ${response.statusCode}");
    print("PUT RESPONSE: ${response.body}");
  }

  // =========================
  // 🗑 DELETE REQUEST (REMOVE DATA)
  // =========================
  Future<void> deletePost() async {
    final url = Uri.parse("$baseUrl/posts/1");

    final response = await http.delete(url, headers: headers);

    print("DELETE STATUS: ${response.statusCode}");
    print("DELETE RESPONSE: ${response.body}");
  }
}
