## character_viewer

The "Simpsons Viewer" and "Wire Characters Viewer" are two delightful Flutter apps that show a list of characters from two iconic TV shows: "The Simpsons" and "The Wire." Apps provide an engaging and visually appealing way for fans to explore a curated list of characters from both series.

## Features

Character List: The app opens to a well-organized list of characters from "The Simpsons" and "The Wire." A thumbnail image and their name represent each character.

Search Functionality: The search feature lets Users quickly find specific characters. As they type, the list dynamically updates to display characters whose names match the search query.

Character Details: Tapping on a character's entry opens a detailed view. This view showcases the character's image, name, and description.

## TODO:
- Add unit tests for UI and bloc logic
- Add favorite characters feature

## Getting Started

Launch "Simpsons Viewer" by running:

```shell
fvm flutter run --flavor simpsonsviewer -t lib/main_simpsonsviewer.dart --dart-define-from-file=simpsons_characters.json  
```

Launch "The Wire Character Viewer":

```shell
 fvm flutter run --flavor wireviewer -t lib/main_wireviewer.dart --dart-define-from-file=wire_characters.json    
```

![Screenshot 1](https://github.com/yurykorzun/characterviewer/blob/main/screenshot1.png?raw=true "Screenshot 1")
![Screenshot 2](https://github.com/yurykorzun/characterviewer/blob/main/screenshot2.png?raw=true "Screenshot 2")
