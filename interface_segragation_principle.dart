//I --- Interface Segregation Principle

/// It state that clients should not be depend on interface they do not use.
/// other words.it promotes the idea of creating specific interfaces tailored to the needs of individual clients
/// ,instead of  having a single interface  that includes method irrelevant to some clients

///
void main(List<String> args) {}

//ISP violations
abstract class Worker {
  void work();
  void eat();
  void sleep();
}

class BadProgrammer implements Worker {
  @override
  void eat() {
    print("programmer is eating ");
  }

  @override
  void sleep() {
    print("programmer is sleeping  ");
  }

  @override
  void work() {
    print("programmer is coding  ");
  }
}

class BadManager implements Worker {
  @override
  void eat() {
    print("Manager is eating ");
  }

  @override
  void sleep() {
    print("Manager is sleeping  ");
  }

  @override
  void work() {
    print("Manager is coding  ");
  }
}

/// In this example , the "Worker" interface has three methods:
/// "works()", "eat()" and "sleep()". Both the "Programmer" and "Manager" classes implements the "Worker" interface
/// However the "Worker" interface violates the interface segregation principle because not all clients(class implementing "Worker ")
/// need or use all the methods defined in the interface.
///
/// To adhere the ISP , We can refactor the code by segregating the interface into smaller, more specific interfaces:
///

///ISP Adhere

abstract class Workable {
  void work();
}

abstract class Feedable {
  void eat();
}

abstract class Sleepable {
  void sleep();
}

class Programmer implements Workable, Feedable, Sleepable {
  @override
  void work() {
    print("programmer is working ");
  }

  @override
  void sleep() {
    print("programmer is sleeping ");
  }

  @override
  void eat() {
    print("programmer is eating ");
  }
}

class Manager implements Workable, Sleepable {
  @override
  void sleep() {
    print("Manager is sleeping !");
  }

  @override
  void work() {
    print("Manager is Working ");
  }
}
