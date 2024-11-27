class Note {
  final String id;
  final String title;
  final String content;
  final DateTime create;
  int color;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.create,
    this.color = 0xff000000,
  });
}
