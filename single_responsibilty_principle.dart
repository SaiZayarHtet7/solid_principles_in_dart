//SOLID principles
//S --- Single Responsibility Principle

//Bad Style for SRP
class BadUser {
  String name;
  String email;

  BadUser(this.name, this.email);

  void saveUser() {
    //Code for saving the user to a database
  }

  void sendEmail() {
    //Code for sending an email to user
  }

  void validateUser() {
    //Code for validating user of data
  }
}

/// In this example , the 'User'  class has multiple responsibilities
/// It handle saving the user into database , sending email, validating user data,
/// so, this code violates the SRP, because the class has more than one reason to change.

//Good style for SRP
class User {
  String name;
  String email;
  User(this.name, this.email);

  void saveUser() {}
}

class UserRepository {
  static void saveUser(User user) {
    //Code for saving the user to a database
  }
}

class EmailService {
  static void sendEmail(String recipient, String subject, String body) {
    //Code for sending an email to the user
  }
}

class UserValidation {
  static bool validateUser(User user) {
    //code for validating user data
    return true;
  }
}
