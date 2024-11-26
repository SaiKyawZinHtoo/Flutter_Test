// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    this.color = 0xff7278ea,
  });

  @override
  String toString() {
    return 'Note(id: $id, title: $title, content: $content, create: $create, color: $color)';
  }
}
