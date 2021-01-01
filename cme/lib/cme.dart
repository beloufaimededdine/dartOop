class coffeeMachine {
  List coffeeSize = [1 , 2 , 3 , 4 , 5];
  double waterLevel=0 ;
  double coffeeLevel=0 ;

  void addWater (double water){
    waterLevel += water ;
  }
  void addCoffee (double coffee){
    waterLevel += coffee ;
  }
  void turnAvailableOptionOn (){
    print (' options on ');
  }
  void turnAvailableOptionOff (){
    print(' options busy');
  }
  bool isCoffeeLevelEnough ( coffeeSize) {
    if (coffeeSize == 1 && coffeeLevel >= 10){
      return true ;
    }
    else {
      return false ;
    }

  }
  bool isWaterLevelEnough (coffeeSize) {
    if (coffeeSize == 1 && waterLevel >= 100){
      return true ;
    }
    else {
      return false ;
    }

  }
  void warnCoffeeLevelLow () {
    print ('coffee is low');
  }
  void warnWaterLevelLow () {
    print ('water is low');

  }
  void makeCoffee (int coffeeSize){
    turnAvailableOptionOff ();
    if (coffeeSize == 1) {
      var waterEnough = isWaterLevelEnough(coffeeSize);
      var coffeeEnough = isCoffeeLevelEnough(coffeeSize);

      if (waterEnough && coffeeEnough ){
        waterLevel -= 100 ;
        coffeeLevel -= 10 ;


      }        print('coffee ready!');
      turnAvailableOptionOn ();
    }

  }
}

// coffeeSize 1 : need 100ml water and 10g coffee