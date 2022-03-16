import 'package:http/http.dart' as http;
import 'dart:convert';

class Album {
  int userId;
  int id;
  String title;

  Map<String, dynamic> toMap() {
    return {
      'userId': this.userId,
      'id': this.id,
      'title': this.title,
    };
  }

  factory Album.fromMap(Map<String, dynamic> map) {
    return Album(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });
}


void main(List<String> arguments) async {

  final String respuesta = (await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'))).body;
  final Map<String,dynamic> json=jsonDecode(respuesta);
  final Album objeto=Album.fromMap(json);

  print(respuesta);
  print(json['id']*200);
  print(json['title']);
  print(objeto.title);
  print(objeto.id*200);

}
