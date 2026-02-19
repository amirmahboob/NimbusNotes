import Foundation

struct Tag: Identifiable, Codable, Hashable {
    let id: UUID
    var name: String

    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}
