import 'package:flutter_application_1/models/TileModel.dart';
import 'package:flutter/material.dart';

String selectedTile = "";
int selectedIndex = 0;
bool selected = true;
int points = 0;

List<TileModel> myPairs = <TileModel>[];
List<bool> clicked = <bool>[];

List<bool> getClicked() {
  List<bool> yoClicked = <bool>[];
  List<TileModel> myairs = <TileModel>[];
  myairs = getPairs();
  for (int i = 0; i < myairs.length; i++) {
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel> getPairs() {
  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel = TileModel(imageAssetPath: '', isSelected: true);

  //1
  tileModel.setImageAssetPath("assets
  /fox.png");

  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: 'assets/fox.png', isSelected: false);

  //2
  tileModel.setImageAssetPath("assets/hippo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //3
  tileModel.setImageAssetPath("assets/horse.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //4
  tileModel.setImageAssetPath("assets/monkey.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //5
  tileModel.setImageAssetPath("assets/panda.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //6
  tileModel.setImageAssetPath("assets/parrot.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //7
  tileModel.setImageAssetPath("assets/rabbit.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //8
  tileModel.setImageAssetPath("assets/zoo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  return pairs;
}

List<TileModel> getQuestionPairs() {
  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //1
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);
  //5
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //6
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //7
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //8
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '', isSelected: false);

  return pairs;
}
