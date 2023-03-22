class Ticket {
  final String title;
  final String name;
  final String date;
  final String location;
  final String price;
  final String description;
  final String imageUrl;

  Ticket(
      {required this.title,
      required this.name,
      required this.date,
      required this.location,
      required this.price,
      required this.description,
      required this.imageUrl});
}
