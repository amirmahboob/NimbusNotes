import SwiftUI

struct NotesListView: View {
    @StateObject private var storage = NoteStorage()

    var body: some View {
        NavigationView {
            List {
                ForEach(storage.notes) { note in
                    Text(note.title)
                }
                .onDelete(perform: deleteNote)
            }
            .navigationTitle("NimbusNotes")
            .toolbar {
                Button(action: addNote) {
                    Image(systemName: "plus")
                }
            }
        }
    }

    private func addNote() {
        let newNote = Note(title: "New note \(storage.notes.count + 1)", content: "")
        storage.add(note: newNote)
    }

    private func deleteNote(at offsets: IndexSet) {
        offsets.map { storage.notes[$0] }.forEach { storage.delete(note: $0) }
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NotesListView()
    }
}
