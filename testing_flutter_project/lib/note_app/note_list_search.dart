import 'package:flutter/material.dart';
import 'package:testing_flutter_project/main.dart';
import 'package:testing_flutter_project/note_app/note_edit_screen.dart';
import 'package:testing_flutter_project/note_app/pages/model/note.dart';

class NoteListSearch extends StatefulWidget {
  const NoteListSearch({super.key});

  @override
  State<NoteListSearch> createState() => _NoteListSearchState();
}

class _NoteListSearchState extends State<NoteListSearch> {
  late List<Note> filteredNotes;

  @override
  void initState() {
    super.initState();
    filteredNotes = allNote;
  }

  void _searchNotes(String query) {
    setState(() {
      filteredNotes = allNote
          .where(
              (note) => note.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.search,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "Search Notes",
                  border: InputBorder.none,
                ),
                onChanged: _searchNotes,
              ),
            ),
          ],
        ),
      ),
      body: filteredNotes.isEmpty
          ? Center(
              child: Text(
                "No notes found.",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              padding: const EdgeInsets.all(16),
              itemCount: filteredNotes.length,
              itemBuilder: (context, index) => NoteCard(
                note: filteredNotes[index],
                onTap: () async {
                  final Note? updatedNote = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NoteEditScreen(
                        note: filteredNotes[index],
                      ),
                    ),
                  );

                  if (updatedNote != null) {
                    setState(() {
                      // Update main list
                      final originalIndex =
                          allNote.indexWhere((n) => n.id == updatedNote.id);
                      allNote[originalIndex] = updatedNote;

                      // Refresh search results
                      _searchNotes('');
                    });

                    // Navigate back to Note List screen
                    Navigator.of(context).pop(allNote);
                  }
                },
              ),
            ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note, required this.onTap});

  final Note note;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text(
        note.content,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
