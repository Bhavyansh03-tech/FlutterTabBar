# Flutter Tab Bar with DefaultTabController

This Flutter app demonstrates the use of `DefaultTabController` with a tab bar and corresponding tab views. Each tab contains an icon and shows different content.

## Features

- Tab navigation with three tabs for Home, Settings, and Profile.
- Smooth transitions between tabs.
- Customizable tab colors and styles.

## Preview
<img src="https://github.com/user-attachments/assets/e2fe8566-04de-441a-b0c0-85e5d6ad9702" alt="First Screenshot" style="width: 200px; height: auto; margin-right: 10px;">
<img src="https://github.com/user-attachments/assets/b9765d27-0905-40f6-a40e-866d132b147b" alt="Second Screenshot" style="width: 200px; height: auto;">

## Code Snippet

Below is the key part of the app using `DefaultTabController`:

```dart
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepPurple[200],
      title: const Center(child: Text('T A B  B A R', style: TextStyle(color: Colors.white))),
    ),
    body: Container(
      color: Colors.deepPurple[200],
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.deepPurple[500], // Color for the selected tab
            unselectedLabelColor: Colors.deepPurple[300], // Color for unselected tabs
            indicatorColor: Colors.deepPurple[500], // Indicator color
            tabs: const [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.person)),
            ]
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  color: Colors.deepPurple[100],
                  child: const Center(child: Text('1ST TAB', style: TextStyle(color: Colors.white))),
                ),
                Container(
                  color: Colors.deepPurple[300],
                  child: const Center(child: Text('2ND TAB', style: TextStyle(color: Colors.white))),
                ),
                Container(
                  color: Colors.deepPurple[500],
                  child: const Center(child: Text('3RD TAB', style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ),
)
```

## Getting Started

To run this project on your local machine:

1. Clone the repository and open it in your IDE:
   ```bash
   git clone https://github.com/Bhavyansh03-tech/FlutterTabBar.git
   ```
2. Run the project on an emulator or a physical device.
   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## Contact

For questions or feedback, please contact [@Bhavyansh03-tech](https://github.com/Bhavyansh03-tech) on GitHub or connect with me on [LinkedIn](https://www.linkedin.com/in/bhavyansh03/).

---
