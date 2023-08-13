import 'package:character_viewer/feature/characterList/repository/data/duckduckgo_response.dart';
import 'package:equatable/equatable.dart';

class CharacterModel extends Equatable {
  final String title;
  final String imageUrl;
  final String description;

  CharacterModel({
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  factory CharacterModel.fromJson(RelatedTopics topic) {
    String? descriptionValue = '';
    String? titleValue = '';

    final text = topic.text;
    final textSplit = text?.split(' - ');
    if (textSplit != null) {
      if (textSplit.length > 1) {
        descriptionValue = textSplit[1];
      }
      if (textSplit.isNotEmpty) {
        titleValue = textSplit[0];
      }
    }
    final imageUrl = topic.icon?.url;

    return CharacterModel(
      imageUrl: imageUrl == null || imageUrl.isEmpty
          ? ''
          : 'https://duckduckgo.com/$imageUrl',
      description: descriptionValue,
      title: titleValue,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [title, imageUrl, description];
}
