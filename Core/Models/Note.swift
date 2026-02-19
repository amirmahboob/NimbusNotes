import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    var title: String
    var content: String
    var dateCreated: Date
    var tags: [String]

    init(title: String, content: String, tags: [String] = []) {
        self.id = UUID()
        self.title = title
        self.content = content
        self.dateCreated = Date()
        self.tags = tags
    }
}
