// To parse this JSON data, do
//
//     final userModal = userModalFromJson(jsonString);

import 'dart:convert';

UserModal userModalFromJson(String str) => UserModal.fromJson(json.decode(str));

String userModalToJson(UserModal data) => json.encode(data.toJson());

class UserModal {
  UserModal({
    required this.name,
    required this.id,
    required this.images,
  });

  String name;
  String id;
  List<String> images;

  factory UserModal.fromJson(Map<String, dynamic> json) => UserModal(
        name: json["name"],
        id  : json["id"],
        images: List<String>.from(json["habits"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "habits": List<dynamic>.from(images.map((x) => x)),
      };
}

List<UserModal> list = [
  UserModal(
    name: "rashid", 
    id: "1", 
    images: [
      "https://img.freepik.com/premium-photo/colorful-ribbons-with-confetti-pink-background-generative-ai_791316-6285.jpg?size=626&ext=jpg", 
      "https://img.freepik.com/premium-photo/red-female-sign-against-pink-background_360032-2481.jpg?size=626&ext=jpg", 
      "https://img.freepik.com/free-photo/violet-mask-with-golden-sequins_23-2148401665.jpg?size=626&ext=jpg"
      ]
      ),
  UserModal(
    name: "farhan", 
    id: "2", 
    images: [
      "https://img.freepik.com/free-vector/teamwork-concept-illustration_1284-20522.jpg?size=626&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais", 
      "https://img.freepik.com/premium-vector/people-connecting-puzzle-elements_171919-1126.jpg?size=338&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais", 
      "https://img.freepik.com/free-vector/forming-team-leadership-concept-illustration_114360-13973.jpg?size=626&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais"]
      ),
  UserModal(
    name: "usman", 
    id: "3", 
    images: [
      "https://img.freepik.com/free-vector/teamwork-concept-illustration_1284-20522.jpg?size=626&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais", 
    /*   "https://img.freepik.com/premium-vector/people-connecting-puzzle-elements_171919-1126.jpg?size=338&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais", 
      "https://img.freepik.com/free-vector/forming-team-leadership-concept-illustration_114360-13973.jpg?size=626&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais" */
      ]
      ),
  UserModal(
    name: "rahman", 
    id: "4", 
    images: [
      "https://img.freepik.com/free-vector/teamwork-concept-illustration_1284-20522.jpg?size=626&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais", 
      "https://img.freepik.com/premium-vector/people-connecting-puzzle-elements_171919-1126.jpg?size=338&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais", 
      "https://img.freepik.com/free-vector/forming-team-leadership-concept-illustration_114360-13973.jpg?size=626&ext=jpg&ga=GA1.1.1010155343.1676980779&semt=ais"]
 ),
];
