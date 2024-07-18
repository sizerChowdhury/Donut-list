
class Donut {
  final String id;
  final String type;
  final String name;
  final double ppu;
  final List<Batter> batters;
  final List<Topping> toppings;

  Donut({required this.id, required this.type, required this.name, required this.ppu, required this.batters, required this.toppings});

  factory Donut.fromJson(Map<String, dynamic> json) {
    var batterList = json['batters']['batter'] as List;
    List<Batter> batterObjs = batterList.map((b) => Batter.fromJson(b)).toList();

    var toppingList = json['topping'] as List;
    List<Topping> toppingObjs = toppingList.map((t) => Topping.fromJson(t)).toList();

    return Donut(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      ppu: json['ppu'].toDouble(),
      batters: batterObjs,
      toppings: toppingObjs,
    );
  }
}

class Batter {
  final String id;
  final String type;

  Batter({required this.id, required this.type});

  factory Batter.fromJson(Map<String, dynamic> json) {
    return Batter(
      id: json['id'],
      type: json['type'],
    );
  }
}

class Topping {
  final String id;
  final String type;

  Topping({required this.id, required this.type});

  factory Topping.fromJson(Map<String, dynamic> json) {
    return Topping(
      id: json['id'],
      type: json['type'],
    );
  }
}
