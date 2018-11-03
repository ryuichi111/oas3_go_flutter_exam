# openapi.api.EmployeeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmployee**](EmployeeApi.md#getEmployee) | **GET** /employee | get employee information


# **getEmployee**
> Employee getEmployee(employeeId)

get employee information

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new EmployeeApi();
var employeeId = employeeId_example; // String | query target employee id

try { 
    var result = api_instance.getEmployee(employeeId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getEmployee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **String**| query target employee id | [default to null]

### Return type

[**Employee**](Employee.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

