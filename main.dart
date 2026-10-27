abstract class Maintainable {
  void performMaintenance();
}

mixin GPSNavigation {
  void navigate(String destination) {
    print('GPS: Calculating route to $destination...');
  }
}

class Vehicle {
  String brand;
  String model;

  Vehicle(this.brand, this.model);

  void startEngine() {
    print('$brand $model engine is starting...');
  }

  Future<String> runDiagnostic() async {
    await Future.delayed(Duration(seconds: 2));
    return '$brand $model diagnostic complete: All systems nominal.';
  }
}

class Car extends Vehicle implements Maintainable {
  int numberOfDoors;

  Car(String brand, String model, this.numberOfDoors) : super(brand, model);

  @override
  void startEngine() {
    print('Pushing the start button on the $brand $model car.');
  }

  @override
  void performMaintenance() {
    print('Car Maintenance: Changing oil and rotating tires.');
  }
}

class Motorcycle extends Vehicle implements Maintainable {
  bool hasSidecar;

  Motorcycle(String brand, String model, this.hasSidecar) : super(brand, model);

  @override
  void startEngine() {
    print('Kicking the pedal to start the $brand $model motorcycle.');
  }

  @override
  void performMaintenance() {
    print('Motorcycle Maintenance: Lubricating chain.');
  }
}

class SmartWatch with GPSNavigation {
  String ownerName;

  SmartWatch(this.ownerName);

  void showTime() {
    print("$ownerName's watch shows the time.");
  }
}

void main() async {
  Car myCar = Car('Toyota', 'Camry', 4);
  Motorcycle myBike = Motorcycle('Yamaha', 'MT-07', false);

  myCar.startEngine();
  myCar.performMaintenance();

  myBike.startEngine();
  myBike.performMaintenance();

  SmartWatch myWatch = SmartWatch('Student');
  myWatch.navigate('National Teachers College');

  print('\n--- Week 11: Async/Await ---');
  
  print('Requesting diagnostic scan for ${myCar.brand} ${myCar.model}...');
  print('Please wait, scanning in progress...');

  String result = await myCar.runDiagnostic();
  
  print(result);
}
