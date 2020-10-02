import 'dart:convert';
import 'package:http/http.dart' as http;
import "employee.dart";

class Services {
  static const ROOT = 'http://localhost/emp/emp_db_api.php';
  static const create_table = 'create_table';
  static const get_all = 'get_all';
  static const add_emp = 'add_emp';
  static const update = 'update';
  static const delete_rec = 'delete_rec';

  //method to create table

  static Future<String> createTable() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = create_table;
      final response = await http.post(ROOT, body: map);
      print('Create table Response : ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  //fetching all the data
  static Future<List<Employee>> getEmployee() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = get_all;
      final response = await http.post(ROOT, body: map);
      print('getEmployee Response : ${response.body}');
      if (200 == response.statusCode) {
        List<Employee> list = parseResponse(response.body);
        return list;
      } else {
        return List<Employee>();
      }
    } catch (e) {
      return List<Employee>();
    }
  }

  static List<Employee> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Employee>((json) => Employee.fromJson(json)).toList();
  }

  //method to add employee
  static Future<String> addEmployee(String firstname, String lastname) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = add_emp;
      map['first_name'] = firstname;
      map['last_name'] = lastname;
      final response = await http.post(ROOT, body: map);
      print('Add Employee Response : ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  //Method to update an employee record
  static Future<String> updateEmployee(
      int empid, String firstname, String lastname) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = update;
      map['emp_id'] = empid;
      map['first_name'] = firstname;
      map['last_name'] = lastname;
      final response = await http.post(ROOT, body: map);
      print('Update Employee Response : ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  //Method to Delete an employee
  static Future<String> deleteEmployee(
      int empid, String firstname, String lastname) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = delete_rec;
      map['emp_id'] = empid;
      map['first_name'] = firstname;
      map['last_name'] = lastname;
      final response = await http.post(ROOT, body: map);
      print('Update Employee Response : ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }
}
