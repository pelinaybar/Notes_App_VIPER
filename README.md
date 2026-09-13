# Notes App — VIPER Architecture

An iOS notes application built to practice modular development with the VIPER architecture.

![Swift](https://img.shields.io/badge/Swift-F05138?logo=swift&logoColor=white)
![UIKit](https://img.shields.io/badge/UIKit-2396F3?logo=apple&logoColor=white)
![Architecture](https://img.shields.io/badge/Architecture-VIPER-6C63FF)

## Features

- Create, list, search, view, and delete notes
- Separate home, save, and detail modules
- Protocol-driven communication between layers
- Firebase configuration for data services
- Storyboard-based UIKit interface

## Architecture

Each feature is separated into the core VIPER responsibilities:

- **View** — renders the interface
- **Interactor** — handles data operations
- **Presenter** — prepares data for presentation
- **Entity** — defines application models
- **Router** — controls navigation

## Getting Started

1. Clone the repository.
2. Open `Notes.xcodeproj` in Xcode.
3. Resolve Swift Package dependencies.
4. Add a valid Firebase configuration for your own project if required.
5. Select an iOS simulator and run.

> Do not reuse production credentials or commit private Firebase configuration files.

---

[Portfolio](https://pelinaybar.com) · [GitHub Profile](https://github.com/pelinaybar)
