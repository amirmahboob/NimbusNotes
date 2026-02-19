# NimbusNotes

NimbusNotes is an open-source SwiftUI note-taking app focused on clean architecture, extensibility, and modern iOS design.

The project aims to provide a production-grade reference SwiftUI application that developers can learn from and build upon, while also being useful as a real notes app.

## Features (Planned)

- Notes CRUD
- Tags
- Search
- Markdown support
- iCloud sync
- Attachments
- Export

## Goals

- Showcase scalable SwiftUI architecture
- Provide modular feature structure
- Demonstrate modern iOS patterns
- Serve as a practical notes tool

## Architecture

The app follows a modular feature-based architecture:

```
App // Entry point of the application
Core // Models, Storage, and Services
Features // Modular feature folders: Notes, Tags, Search
UI // Reusable Views and Components
Resources // Assets like images, colors, fonts
```

This structure allows NimbusNotes to scale easily with additional features like iCloud sync, Markdown support, attachments, and collaboration.

## Roadmap

### Phase 1
- Basic notes
- Tags
- Local storage
- Search

### Phase 2
- Markdown
- iCloud sync
- Attachments

### Phase 3
- Collaboration
- Export
- Widgets

## License

MIT
