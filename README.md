# character_viewer

The "Simpsons Viewer" and "Wire Characters Viewer" are two delightful Flutter apps that shows a list of characters from two iconic TV shows: "The Simpsons" and "The Wire." Apps provides an engaging and visually appealing way for fans to explore a curated list of characters from both series.

##Features

Character List: The app opens to a well-organized list of characters from "The Simpsons" and "The Wire." Each character is represented by a thumbnail image and their name.

Search Functionality: Users can quickly find specific characters by using the search feature. As they type, the list dynamically updates to display characters whose names match the search query.

Character Details: Tapping on a character's entry opens a detailed view. This view showcases the character's image, name, and a brief description.

## Getting Started
The app was developed and tested using Flutter 3.10.5

Launch "Simpsons Viewer" by running:

```shell
flutter run --flavor simpsonsviewer -t lib/main_simpsonsviewer.dart --dart-define-from-file=simpsons_characters.json  
```

Launch "The Wire Character Viewer":

```shell
flutter run --flavor wireviewer -t lib/main_wireviewer.dart --dart-define-from-file=wire_characters.json    
```

![Screenshot 1](https://github.com/yurykorzun/characterviewer/blob/main/screenshot1.png?raw=true "Screenshot 1")
![Screenshot 2](https://github.com/yurykorzun/characterviewer/blob/main/screenshot2.png?raw=true "Screenshot 2")
