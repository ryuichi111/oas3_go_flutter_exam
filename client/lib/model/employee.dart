part of openapi.api;

class Employee {
  
  String id = null;
  
  String firstName = null;
  
  String lastName = null;
  
  int salary = null;
  Employee();

  @override
  String toString() {
    return 'Employee[id=$id, firstName=$firstName, lastName=$lastName, salary=$salary, ]';
  }

  Employee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    salary = json['salary'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'salary': salary
    };
  }

  static List<Employee> listFromJson(List<dynamic> json) {
    return json == null ? new List<Employee>() : json.map((value) => new Employee.fromJson(value)).toList();
  }

  static Map<String, Employee> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Employee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new Employee.fromJson(value));
    }
    return map;
  }
}

