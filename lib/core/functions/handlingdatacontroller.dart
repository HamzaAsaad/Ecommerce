import 'package:first_project/core/class/statusrequest.dart';

handlingdData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
