import "package:permission_handler/permission_handler.dart";

abstract class Permissions {
  Future<void> checkPermission();
}

class PermissionsImpl implements Permissions {
  @override
  Future<void> checkPermission() async {
    Permission.notification;
  }
}
