import '/backend/schema/structs/index.dart';

class UpdateAdvertisementsAfterProfileEditCloudFunctionCallResponse {
  UpdateAdvertisementsAfterProfileEditCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}
