import 'package:kupa_project/language/language.dart';

class OnBoardModel {
  final String title;
  final String description;
  final String imageName;

  OnBoardModel(this.title, this.description, this.imageName);
  String get imageWithPath => 'assets/images/$imageName.png';
}

class OnboardModels {
 
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel(Strings().pagesTitle, Strings().pageTextOne, 'salad'),
    OnBoardModel(Strings().pagesTitleTwo, Strings().pageTextTwo, 'courier'),
  ];
}
