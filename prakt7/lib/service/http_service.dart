import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'package:prakt7/models/movie.dart';

class HttpService {
  final String apiKey = '817e7388d64e814f66d8c439d0fe7c90';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

  Future<List?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    }else{
      
      return null;
    }
  }
}