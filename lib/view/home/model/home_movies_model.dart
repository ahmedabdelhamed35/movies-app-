///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class HomeMoviesModelResults {
/*
{
  "adult": false,
  "backdrop_path": "/zGLHX92Gk96O1DJvLil7ObJTbaL.jpg",
  "genre_ids": [
    14
  ],
  "id": 338953,
  "original_language": "en",
  "original_title": "Fantastic Beasts: The Secrets of Dumbledore",
  "overview": "Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. They soon encounter an array of old and new beasts as they clash with Grindelwald's growing legion of followers.",
  "popularity": 3867.415,
  "poster_path": "/8ZbybiGYe8XM4WGmGlhF0ec5R7u.jpg",
  "release_date": "2022-04-06",
  "title": "Fantastic Beasts: The Secrets of Dumbledore",
  "video": false,
  "vote_average": 6.9,
  "vote_count": 1761
}
*/

  bool? adult;
  String? backdrop_path;
  List<int?>? genre_ids;
  int? id;
  String? original_language;
  String? original_title;
  String? overview;
  double? popularity;
  String? poster_path;
  String? release_date;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;

  HomeMoviesModelResults({
    this.adult,
    this.backdrop_path,
    this.genre_ids,
    this.id,
    this.original_language,
    this.original_title,
    this.overview,
    this.popularity,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });
  HomeMoviesModelResults.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdrop_path = json['backdrop_path']?.toString();
    if (json['genre_ids'] != null) {
      final v = json['genre_ids'];
      final arr0 = <int>[];
      v.forEach((v) {
        arr0.add(v.toInt());
      });
      genre_ids = arr0;
    }
    id = json['id']?.toInt();
    original_language = json['original_language']?.toString();
    original_title = json['original_title']?.toString();
    overview = json['overview']?.toString();
    popularity = json['popularity']?.toDouble();
    poster_path = json['poster_path']?.toString();
    release_date = json['release_date']?.toString();
    title = json['title']?.toString();
    video = json['video'];
    vote_average = json['vote_average']?.toDouble();
    vote_count = json['vote_count']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['adult'] = adult;
    data['backdrop_path'] = backdrop_path;
    if (genre_ids != null) {
      final v = genre_ids;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['genre_ids'] = arr0;
    }
    data['id'] = id;
    data['original_language'] = original_language;
    data['original_title'] = original_title;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = poster_path;
    data['release_date'] = release_date;
    data['title'] = title;
    data['video'] = video;
    data['vote_average'] = vote_average;
    data['vote_count'] = vote_count;
    return data;
  }
}

class HomeMoviesModel {
/*
{
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/zGLHX92Gk96O1DJvLil7ObJTbaL.jpg",
      "genre_ids": [
        14
      ],
      "id": 338953,
      "original_language": "en",
      "original_title": "Fantastic Beasts: The Secrets of Dumbledore",
      "overview": "Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. They soon encounter an array of old and new beasts as they clash with Grindelwald's growing legion of followers.",
      "popularity": 3867.415,
      "poster_path": "/8ZbybiGYe8XM4WGmGlhF0ec5R7u.jpg",
      "release_date": "2022-04-06",
      "title": "Fantastic Beasts: The Secrets of Dumbledore",
      "video": false,
      "vote_average": 6.9,
      "vote_count": 1761
    }
  ],
  "total_pages": 33924,
  "total_results": 678477
}
*/

  int? page;
  List<HomeMoviesModelResults?>? results;
  int? total_pages;
  int? total_results;

  HomeMoviesModel({
    this.page,
    this.results,
    this.total_pages,
    this.total_results,
  });
  HomeMoviesModel.fromJson(Map<String, dynamic> json) {
    page = json['page']?.toInt();
    if (json['results'] != null) {
      final v = json['results'];
      final arr0 = <HomeMoviesModelResults>[];
      v.forEach((v) {
        arr0.add(HomeMoviesModelResults.fromJson(v));
      });
      results = arr0;
    }
    total_pages = json['total_pages']?.toInt();
    total_results = json['total_results']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    if (results != null) {
      final v = results;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['results'] = arr0;
    }
    data['total_pages'] = total_pages;
    data['total_results'] = total_results;
    return data;
  }
}