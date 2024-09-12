const admin = require("firebase-admin/app");
admin.initializeApp();

const updateAdvertisementsAfterProfileEdit = require("./update_advertisements_after_profile_edit.js");
exports.updateAdvertisementsAfterProfileEdit =
  updateAdvertisementsAfterProfileEdit.updateAdvertisementsAfterProfileEdit;
