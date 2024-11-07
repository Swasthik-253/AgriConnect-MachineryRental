class Crop {
  final int id;
  final String name;
  final String knName;

  Crop({
    required this.id,
    required this.name,
    required this.knName,
  });

  String get imagePath => 'assets/crops/${name.toLowerCase()}.png';
}

//Crops are rice,tomato,carrot,sugarcane,potato,maize,cotton,grapes

//knName is the name of the crop in Kannada

final List<Crop> crops = [
  Crop(id: 0, name: 'Rice', knName: 'ಅಕ್ಕಿ'),
  Crop(id: 1, name: 'Canola', knName: 'ಸಾಸಿವೆ'),
  Crop(id: 2, name: 'Cotton', knName: 'ಹತ್ತಿ'),
  Crop(id: 3, name: 'Maize', knName: 'ಜೋಳ'),
  Crop(id: 4, name: 'Peanut', knName: 'ಕಡಲೆಕಾಯಿ'),
  Crop(id: 5, name: 'Sugarcane', knName: 'ಕಬ್ಬು'),
  Crop(id: 6, name: 'Wheat', knName: 'ಗೋದಿ'),
  Crop(id: 7, name: 'Ploughing', knName: 'ಉಳುಮೆಯ'),
  Crop(id: 8, name: 'Planting', knName: 'ನೆಟ್ಟ'),
];
