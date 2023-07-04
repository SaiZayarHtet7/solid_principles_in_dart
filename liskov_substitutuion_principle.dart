//L --- Liskov Substitution Principle

/// it states that object of superclass should be replaceable with objects of its subclasses
/// without affecting the correctness of program . In other words, a subclasses should be able to be used wherever its parent class
/// is expected
/// here example
///
void main(List<String> args) {
  operatorVehicle(Car());
  operatorVehicle(ElectricCar());
}

abstract class Vehicle {
  void startEngine();
  void stopEngine();
}

class Car implements Vehicle {
  @override
  void startEngine() {
    print("starting car engine ");
  }

  @override
  void stopEngine() {
    print("stopping car engine ");
  }
}

class ElectricCar implements Vehicle {
  @override
  void startEngine() {
    print("Electric Car starting engine");
  }

  @override
  void stopEngine() {
    print("Electric Car stopping engine");
  }
}

void operatorVehicle(Vehicle vehicle) {
  vehicle.startEngine();
  vehicle.stopEngine();
}
/// By following the Liskov Substitution Principle, we ensure that subclasses 
///can be used interchangeably with their parent class, enabling code reuse and modularity.