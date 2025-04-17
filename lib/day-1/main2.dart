Future<void> fetchData() async {
  print("fetchData()");
  await Future.delayed(Duration(seconds: 2), () {
    print("Data fetched");
  });
}

void main() async {
  print("Heloooooo");
  // await fetchData();
  print("Gooo Nightt...");

  List<int> scores = [10, 20, 30, 35];
  print(scores);
  scores.add(38);
  scores.add(35);
  print(scores);
  print(scores.last);
  scores.removeAt(0);
  scores.addAll([44,55]);
  scores.insert(2, 1000);
  print(scores);
  for (var i = 0; i < scores.length; i++) {
    print("Score: ${scores[i]}");
  }

  Set<int> ages = {17, 18, 20, 25};
  print(ages);
  ages.add(35);
  ages.add(17);
  ages.remove(17);
  print(ages);
  print(ages.first);

  Map<String, dynamic> profile = {
    "name": "Andi",
    "age": 24,
    "gender": 'male'
  };
  print(profile);
  print(profile['name']);

  List<Map<String, dynamic>> data = [
    {
      "name": "Andi",
      "age": 24,
      "gender": 'male'
    },
    {
      "name": "Tom",
      "age": 23,
      "gender": 'male'
    }
  ];
  print(data);

}