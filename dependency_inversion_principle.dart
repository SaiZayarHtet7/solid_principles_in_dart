///D - Dependency Inversion Principles
///it state that high level modules should not depend on low-level module
///both should depend on abstractions,It promotes the idea of depending on the
///abstraction rather than concrete implementations ,In dart ,this can be achieved
/// through the use of interfaces or abstract classes
///

//DIP Violation

class BadDatabase {
  void saveData(String data) {
    // Code for saving data to a database
  }
}

class BadDataProcessor {
  late Database _database;

  BadDataProcessor() {
    _database = Database();
  }

  void processData(String data) {
    // Perform some data processing
    _database.saveData(data);
  }
}

///DIP adhere

abstract class IDataStorage {
  void saveData(String data);
}

class Database implements IDataStorage {
  @override
  void saveData(String data) {
    // Code for saving data to a database
  }
}

class DataProcessor {
  late IDataStorage _dataStorage;

  DataProcessor(IDataStorage dataStorage) {
    _dataStorage = dataStorage;
  }

  void processedData(String data) {
    _dataStorage.saveData(data);
  }
}
