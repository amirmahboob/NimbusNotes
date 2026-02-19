import Foundation

class NoteStorage: ObservableObject {
    @Published var notes: [Note] = []

    private let key = "NimbusNotesStorage"

    init() {
        load()
    }

    func add(note: Note) {
        notes.append(note)
        save()
    }

    func delete(note: Note) {
        notes.removeAll { $0.id == note.id }
        save()
    }

    private func save() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }

    private func load() {
        if let data = UserDefaults.standard.data(forKey: key),
           let decoded = try? JSONDecoder().decode([Note].self, from: data) {
            notes = decoded
        }
    }
}
