void main() {
  Creature goblin = Creature('Goblin', 1, 1);
  print(goblin);

  CreatureModifier root = CreatureModifier(goblin);
  root.addModofier(DoubleAttackModifier(goblin));
  root.addModofier(DoubleAttackModifier(goblin));
  root.addModofier(NoBonusModifier(goblin));
  root.addModofier(IncreaseDefenseModifier(goblin));
  root.handle();
  print(goblin);
}

class Creature {
  String name;
  int attack;
  int defense;

  Creature(this.name, this.attack, this.defense);

  @override
  String toString() => "$name ($attack/$defense)";
}

class CreatureModifier {
  Creature creature;
  CreatureModifier? nextModifier;

  CreatureModifier(this.creature);

  void handle() {
    if (nextModifier != null) {
      nextModifier!.handle();
    }
  }

  void addModofier(CreatureModifier modifier) {
    if (nextModifier != null) {
      nextModifier!.addModofier(modifier);
    } else {
      nextModifier = modifier;
    }
  }
}

class DoubleAttackModifier extends CreatureModifier {
  Creature c;
  DoubleAttackModifier(this.c) : super(c);

  @override
  void handle() {
    print('Doubling ${creature.name}\'s attack.');
    creature.attack *= 2;
    super.handle();
  }
}

class IncreaseDefenseModifier extends CreatureModifier {
  Creature c;
  IncreaseDefenseModifier(this.c) : super(c);

  @override
  void handle() {
    print('Increase ${creature.name}\'s defense.');
    creature.defense *= 4;
    super.handle();
  }
}

class NoBonusModifier extends CreatureModifier {
  Creature c;
  NoBonusModifier(this.c) : super(c);

  @override
  void handle() {
    print('No bonuses for you');
  }
}
