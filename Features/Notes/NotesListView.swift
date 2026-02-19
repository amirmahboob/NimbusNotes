import SwiftUI

struct NotesListView: View {
    @State private var notes: [String] = ["Welcome to NimbusNotes"]

    var body: some View {
        NavigationView {
            List(notes, id: \.self) { note in
                Text(note)
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
        notes.append("New note \(notes.count + 1)")
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NotesListView()
    }
}
