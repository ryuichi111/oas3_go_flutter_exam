part of openapi.api;



class EmployeeApi {
  final ApiClient apiClient;

  EmployeeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// get employee information
  ///
  /// 
  Future<Employee> getEmployee(String employeeId) async {
    Object postBody;

    // verify required params are set
    if(employeeId == null) {
     throw new ApiException(400, "Missing required param: employeeId");
    }

    // create path and map variables
    String path = "/employee".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "employeeId", employeeId));

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'Employee') as Employee;
    } else {
      return null;
    }
  }
}
