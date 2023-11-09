class Repository {
  String name;
  String imageUrl;
  String cost;

  Repository(this.name, this.imageUrl, this.cost);

  static List<Repository> foodsList = [
    Repository(
      "JUNIOR BURGER",
      "assets/image/junior_burger.jpg",
      "19 000",
    ),
    Repository(
      "CLASSIC",
      "assets/image/classic_burger.jpeg",
      "21 000",
    ),
    Repository(
      "BIGGER",
      "assets/image/bigger.jpeg",
      "26 000",
    ),
    Repository(
      "SPINNER",
      "assets/image/spinner.jpg",
      "21 000",
    ),
    Repository(
      "KIDS MEAL",
      "assets/image/kids_meal.jpg",
      "34 000",
    ),
  ];
}
