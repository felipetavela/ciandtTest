# CI&T TestApp 📱

![Swift](https://img.shields.io/badge/Swift-5.9-orange?logo=swift&logoColor=white)
![Platform](https://img.shields.io/badge/iOS-17-lightgrey?logo=apple)
![Architecture](https://img.shields.io/badge/Architecture-MVVM%20+%20Clean-blue)

This project was developed as part of an CI&T technical test.  
The app consumes the [JSONPlaceholder](https://jsonplaceholder.typicode.com/posts) API and displays a list of posts with individual details.

---

## ✨ Features
- Fetch and display posts from a public API.
- Show post title and preview in the list.
- Detail screen with full information about a post.
- Pull-to-refresh to reload posts.
- Proper state handling: **loading**, **error**, **success**.
- Navigation between list and detail.

---

## 🏗 Architecture
The project was built using **SwiftUI + MVVM**, applying **Clean Architecture principles**:

- **Presentation (MVVM)**  
  - `Views` (SwiftUI UI layer)  
  - `ViewModels` (ObservableObject, state management)  

- **Domain**  
  - `Entities` (pure business models)  
  - `Repositories` (protocols defining data contracts)  

- **Data**  
  - `DTOs` (data transfer objects for API decoding)  
  - `RepositoriesImpl` (repository implementations, networking with URLSession)  

This separation ensures **low coupling**, **testability**, and **clear responsibilities**.

---

## 🛠 Tech Stack
- **Language**: Swift 5.9+
- **UI**: SwiftUI
- **Architecture**: MVVM + Clean concepts
- **Async**: Swift Concurrency (`async/await`)
- **Networking**: Native URLSession
- **Tests**: XCTest (unit and UI tests)

---

## ▶️ How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/felipetavela/ciandtTest
   ```
2. Open the project in **Xcode 15+**
3. Run on simulator (**iOS 17+**)

---

## ✅ Tests
- **Unit Test**: Covers `FetchPostsUseCase` / `Repository`.
- **UI Test**: Covers list → detail flow.

To run:
```bash
Cmd + U
```

Tests run successfully on the iOS Simulator. Running directly on a physical device may require additional configuration in the Test target build settings.

---

## 🚀 Future Improvements
With more time, the project could be improved with:
- **Offline persistence** using CoreData or Realm.
- Local **cache** for data and images.
- **Pagination** support for large datasets.
- Enhanced **Accessibility** (VoiceOver, Dynamic Type).
- **Internationalization (i18n)** with multiple language support.
- **CI/CD pipeline** (GitHub Actions) for automated testing.
- Evolving to a **full Clean Architecture** with explicit UseCases.

---

## 👨‍💻 Author
Developed by Felipe Tavela
[LinkedIn](https://www.linkedin.com/in/felipetavela) | [GitHub](https://github.com/felipetavela)
