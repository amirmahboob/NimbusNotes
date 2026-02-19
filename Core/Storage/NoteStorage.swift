import Foundation

class NoteStorage: ObservableObject {
    @Published var notes: [Note] = []
    @Published var tags: [Tag] = []

    private let notesKey = "NimbusNotesStorage"
    private let tagsKey = "NimbusTagsStorage"

    init() {
        loadNotes()
        loadTags()
    }

    func add(note: Note) {
        notes.append(note)
        saveNotes()
    }

    func delete(note: Note) {
        notes.removeAll { $0.id == note.id }
        saveNotes()
    }

    func add(tag: Tag) {
        tags.append(tag)
        saveTags()
    }

    func delete(tag: Tag) {
        tags.removeAll { $0.id == tag.id }
        saveTags()
    }

    // MARK: - Notes
    private func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: notesKey)
        }
    }

    private func loadNotes() {
        if let data = UserDefaults.standard.data(forKey: notesKey),
           let decoded = try? JSONDecoder().decode([Note].self, from: data) {
            notes = decoded
        }
    }

    // MARK: - Tags
    private func saveTags() {
        if let encoded = try? JSONEncoder().encode(tags) {
            UserDefaults.standard.set(encoded, forKey: tagsKey)
        }
    }

    private func loadTags() {
        if let data = UserDefaults.standard.data(forKey: tagsKey),
           let decoded = try? JSONDecoder().decode([Tag].self, from: data) {
            tags = decoded
        }
    }
}
