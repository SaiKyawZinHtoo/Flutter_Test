import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testing_flutter_project/note_app/pages/model/note.dart';
import 'package:uuid/uuid.dart';

class NoteEditScreen extends StatefulWidget {
  const NoteEditScreen({super.key, this.note});
  final Note? note;

  @override
  State<NoteEditScreen> createState() => _NoteEditScreenState();
}

class _NoteEditScreenState extends State<NoteEditScreen> {
  final List<Color> colors = Colors.primaries;
  Color currentColor = Colors.primaries.first;

  late final TextEditingController _titleController;
  late final TextEditingController _contentController;
  late DateTime currentDate;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(
      text: widget.note?.title,
    );
    _contentController = TextEditingController(
      text: widget.note?.content,
    );
    currentDate = widget.note != null ? widget.note!.create : DateTime.now();
    currentColor =
        widget.note != null ? Color(widget.note!.color) : colors.first;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  void _saveNote() {
    if (_titleController.text.trim().isEmpty ||
        _contentController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Title and content cannot be empty")),
      );
      return;
    }

    final Note note;
    if (widget.note != null) {
      note = Note(
        id: widget.note!.id,
        title: _titleController.text.trim(),
        content: _contentController.text.trim(),
        create: DateTime.now(),
        color: currentColor.value,
      );
    } else {
      note = Note(
        id: const Uuid().v4(),
        title: _titleController.text.trim(),
        content: _contentController.text.trim(),
        create: DateTime.now(),
        color: currentColor.value,
      );
    }

    Navigator.of(context).pop(note);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.note != null ? "Edit Note" : "New Note"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: "Save Note",
            onPressed: _saveNote,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              maxLines: null,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
                hintStyle: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              DateFormat.yMMMd().format(currentDate),
              style: TextStyle(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _contentController,
              maxLines: null,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Content",
                hintStyle: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Select Note Color",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final color = colors[index % colors.length];
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = color;
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 8, left: index == 0 ? 20 : 0),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: currentColor == color
                      ? Border.all(color: Colors.white, width: 2)
                      : null,
                ),
                width: 48,
                height: 48,
                child: currentColor.value == color.value
                    ? const Icon(Icons.check, color: Colors.white)
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
